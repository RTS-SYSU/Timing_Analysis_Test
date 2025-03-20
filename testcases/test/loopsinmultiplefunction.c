int exec() {
	for(int i=0;i < 5; ++i){
		i += 1;
		i -= 1;
	}
	return 0;
}

int a() {
	for (int i = 0; i < 12; ++i) {
		exec();
	}
	return 1;
}

int b() {
	for (int i = 2; i < 5; ++i) {
		exec();
	}
	return 2;
}

int loop() {
	for(int i=0;i<3;i++){
		a();
		b();
	}
	return 0;
}
