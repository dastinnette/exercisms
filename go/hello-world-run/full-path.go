package main
import "fmt"
import "os"
import "os/exec"
import "path/filepath"

func containsAny(haystack []string, needles []string) bool {
  for _, hay := range haystack {
    for _, needle := range needles {
      if hay == needle {
        return true
      }
    }
  }
  return false
}

func join(strs []string) string {
  joined := ""
  for index, str := range strs {
    if index != 0 {
      joined += "\n"
    }
    joined += str
  }
  return joined
}



func doShowHelp(args []string) bool {
  return containsAny(args, []string{"-h", "--help"})
}

func doCopy(args []string) bool {
  return containsAny(args, []string{"-c", "--copy"})
}

func isFlag(arg string) bool {
  return arg == "-c" || arg == "--copy" ||
         arg == "-h" || arg == "--help"
}

func relativePaths(args []string) []string {
  // this is just select
  relativePaths := []string{}
  for _, arg := range args {
    if !isFlag(arg) {
      relativePaths = append(relativePaths, arg)
    }
  }
  return relativePaths
}

func fullPath(relativePath string) string {
  fullPath, _ := filepath.Abs(relativePath)
  return fullPath
}

func fullPaths(relativePaths []string) []string {
  // this is just map
  fullPaths := []string{}
  for _, relativePath := range relativePaths {
    fullPaths = append(fullPaths, fullPath(relativePath))
  }
  return fullPaths
}

func copyToClipboard(str string) {
  cmd := exec.Command("pbcopy")
  writer, _ := cmd.StdinPipe()
  cmd.Start()
  fmt.Fprintln(writer, str)
  writer.Close()
  cmd.Wait()
}

func main() {
  args := os.Args[1:]

  if doShowHelp(args) {
    fmt.Println("usage: fullpath *[relative-paths] [-c]")
    fmt.Println()
    fmt.Println("  Prints the fullpath of the paths")
    fmt.Println("  If no paths are given as args, it will read them from stdin")
    fmt.Println()
    fmt.Println("  If there is only one path, the trailing newline is omitted")
    fmt.Println()
    fmt.Println("  The -c flag will copy the results into your pasteboard")
  } else {
    fullPaths := fullPaths(relativePaths(args))
    fullPathString := join(fullPaths)
    if doCopy(args) {
      copyToClipboard(fullPathString)
    }
    fmt.Println(fullPathString)
  }
}
