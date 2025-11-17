// ./garrafa teste -t sim
package main

import (
	"fmt"

	"github.com/spf13/cobra"
)

func main() {
	var rootCmd = &cobra.Command{Use: "garrafa"}

	var arg string

	var cmd = &cobra.Command{
		Use: "teste",
		Short: "Isso é um teste",
		Run: func (cmd *cobra.Command, args []string)  {
			fmt.Printf("Você digitou %s\n", arg)
		},
	}
	// isso pertence ao comando "teste" e voce pode usar --teste <arg> ou -t <arg>
	cmd.Flags().StringVarP(&arg, "teste", "t", "", "100%% teste")
	rootCmd.AddCommand(cmd)

	rootCmd.Execute()
}