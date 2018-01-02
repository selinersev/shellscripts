#define STR_CAP (512)
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

int main(int argc, char **argv) {
	char* token;
	int i = 0;
	int number = 0;

	char* commandLine;
	commandLine = (char*)malloc(sizeof(char));

	printf("[1] html-tag-shower file.txt\n");
	printf("[2] install-with-pip \n");
	printf("[3] take-shuttle-hours\n");
	printf("[4] generate-password number\n");
	printf("[5] send-email body subject targetMail (words in the body should be seperated by '-' \n");
	printf("[6] install-dotfiles\n");
	scanf("%d", &number);
	scanf (" %[^\n]%*c", commandLine);

	token = strtok(commandLine, " ");

	char** tokenList = (char**)malloc(sizeof(char));

	while (token != NULL){
		printf ("%s\n",token);
		tokenList[i] = token;
		i++;
		token = strtok (NULL, " ");
	}
	char *selin_Easy[] = {
		"/bin/bash",
		"./html-tag-shower.sh",
		tokenList[1],
		NULL };

	char *selin_Medium[] = {
		"/bin/bash",
		"./install-with-pip.sh",
		NULL };

	char *source[] = {
		"/bin/bash",
		"source",
		"alias.sh",
		"permission",
		"777",
		"send-email.sh",
		NULL };

	char *selin_Hard[] = {
		"/bin/bash",
		"./take-shuttle-hours.sh",
		NULL };

	char *can_Easy[] = {
		"/bin/bash",
		"./generate-password.sh",
		tokenList[1],
		NULL };

	char *can_Medium[] = {
		"/bin/bash",
		"./send-email.sh",
		tokenList[0],
		tokenList[1],
		tokenList[2],
		NULL };

	char *can_Hard[] = {
		"/bin/bash",
		"./install-dotfiles.sh",
		NULL };

	if (number == 1) {
		execv(selin_Easy[0], selin_Easy);
	}
	else if (number == 2) {
		execv(selin_Medium[0], selin_Medium);
	}
	else if (number == 3) {
		execv(selin_Hard[0], selin_Hard);
	}
	else if (number == 4) {
		execv(can_Easy[0], can_Easy);
	}
	else if (number == 5) {
		execv(can_Medium[0], can_Medium);
	}
	else if (number == 6) {
		execv(can_Hard[0], can_Hard);
	}
	else if (number == 7) {
		execv(source[0], source);
	}
	else {
		printf("There is no command for this number");
	}
}
