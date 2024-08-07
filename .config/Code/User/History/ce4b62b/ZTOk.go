package main

import (
	"fmt"
	"reflect"
	"runtime"
)

type Player struct {
	health int
}

func takeDamageFromExplosion(p *Player) {
	fmt.Println("Player is taking damage from explosion...")
	var explosionDmg int = 10
	p.health -= explosionDmg
}

func main() {

	
	var vf reflect.Value = reflect.ValueOf(takeDamageFromExplosion)
	vfp := vf.Pointer();
	runtime.FuncForPC(vfp)

	
	var p Player = Player{
		health: 100,
	}

	fmt.Println("Player health before explostion: ", p.health)
	takeDamageFromExplosion(&p)
	fmt.Println("Player health after explostion: ", p.health)
	
	
}
