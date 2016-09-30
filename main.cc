/**
 *@file: main.cc
 *@brief: this is main file for the project 7
 *@author: Brock Ferrell
 *@date: November 23, 2015
 */


#include "game.h"
#include "othello.h"
using namespace main_savitch_14;


int main()
{
	Othello theGame;
	theGame.restart();
	theGame.play();
}
