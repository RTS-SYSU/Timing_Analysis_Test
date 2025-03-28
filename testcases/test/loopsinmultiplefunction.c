int exec() {
	_Pragma( "loopbound min 5 max 5" )
	for(int i=0;i < 5; ++i){
		i += 1;
		i -= 1;
	}
	return 0;
}

int a() {
	_Pragma( "loopbound min 12 max 12" )
	for (int i = 0; i < 12; ++i) {
		exec();
	}
	return 1;
}

int b() {
	_Pragma( "loopbound min 3 max 3" )
	for (int i = 2; i < 5; ++i) {
		exec();
	}
	return 2;
}

int loop() {
	_Pragma( "loopbound min 3 max 3" )
	for(int i=0;i<3;i++){
		a();
		b();
	}
	return 0;
}
