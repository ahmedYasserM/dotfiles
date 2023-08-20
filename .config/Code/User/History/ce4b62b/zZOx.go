package main

import "fmt"

type Player struct {
	health int
}

func takeDamageFromExplosion(p Player) {
	fmt.Println("Player is taking damage from explosion...")
	var explosionDmg int = 10
	p.health -= explosionDmg
}

func main() {
	
	var p Player = Player{
		health: 100,
	}
	
	fmt.Println("")
	takeDamageFromExplosion(p)

}
