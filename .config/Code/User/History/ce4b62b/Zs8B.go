package main

import "fmt"

type Player struct {
	health int
}

func takeDamageFromExplosion(p Player) Player {
	fmt.Println("Player is taking damage from explosion...")
	var explosionDmg int = 10
	p.health -= explosionDmg
	return p
}

func main() {
	
	var p Player = Player{
		health: 100,
	}
	
	fmt.Println("Player health before explostion: ", p.health)
	p = takeDamageFromExplosion(p)
	fmt.Println("Player health after explostion: ", p.health)
}
