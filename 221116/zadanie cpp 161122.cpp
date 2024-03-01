#include <iostream>
#include <fstream>
#include <ctime>
#include <cstdlib>
 
using namespace std;
 
int main() {
 
	ofstream plikzapis;
	ifstream plikodczyt;
 
	int k,liczba,suma=0,licznik=0;
 
 
 
	cout<<"Wybierz 1 by otworzyc zadanie 3.46, wybierz 2 by otworzyc zadanie 3.46 z randem, wybierz 3 by otworzyc zadanie struct, wybierz 4 zadanie ze studentami(3.47)"<<endl;
	cin>>k;
 
	switch (k){
		case 1:{
			cout<<"Zadanie 3.46"<<endl;
			plikzapis.open("dane.txt");
			for(int i=1;i<=16;i++){
				if(i!=16)
					plikzapis<<i<<endl;
				else
					plikzapis<<i;
			}
			plikzapis.close();
			//wypisanie liczb mniejszych od 13
			plikodczyt.open("dane.txt");
			while(!plikodczyt.eof()){
				plikodczyt>>liczba;
				if(liczba<13)
					cout<<liczba<<endl;
			}
			//policzenie sredniej wartosci liczb mniejszych od 11
			plikodczyt.open("dane.txt");
			while(!plikodczyt.eof()){
				plikodczyt>>liczba;
				if(liczba<11){	
					suma+=liczba;
					licznik++;
				}
			}
			cout<<"Srednia wynosi: "<<(double)suma/licznik<<endl;
			plikodczyt.close();
			//wartosci podzielne przez 2 przepisanie do innego pliku
			plikodczyt.open("dane.txt");
			plikzapis.open("wynik.txt");
			while(!plikodczyt.eof()){
				plikodczyt>>liczba;
				if(liczba%2==0 && liczba!=16)
					plikzapis<<liczba<<endl;
				else if(liczba%2==0)
					plikzapis<<liczba;
			}
			plikodczyt.close();
			plikzapis.close();
			//wypisanie liczb z pliku wynik.txt
			plikodczyt.open("wynik.txt");
			cout<<"Dane z pliku wynik.txt"<<endl;
				while(!plikodczyt.eof()){
					plikodczyt>>liczba;
					cout<<liczba<<endl;
				}
			plikodczyt.close();
		}
			break;
		case 2:{
			cout<<"Zadanie 3.46 z randem";
				plikzapis.open("rand.txt");
				srand(time(NULL));
				for(int i=0;i<10;i++){
					if(i!=10)
					plikzapis<<rand()%10<<endl;
					else
					plikzapis<<rand()%10;
				}
				plikzapis.close();
				//wypisanie wszystkich liczb
				plikodczyt.open("rand.txt");
			while(!plikodczyt.eof()){
				plikodczyt>>liczba;
			//	if(liczba>0)
				cout<<"\n"<<liczba;
			}
			plikodczyt.close();
			//wypisanie wartosci niepodzielnych przez 3 i przepisanie ich do randzapis.txt
			cout<<"\n Wypisanie wartosci niepodzielnych przez 3 i przepisanie ich do randzapis.txt "<<endl;
				plikodczyt.open("rand.txt");
				plikzapis.open("randzapis.txt");
				while(!plikodczyt.eof()){
					plikodczyt>>liczba;
					if(liczba%3!=0)
						plikzapis<<liczba<<endl;
					else if(liczba%3!=0)
					plikzapis<<liczba;
				}
				plikzapis.close();
				plikodczyt.close();
			//odczyt z pliku randzapis.txt
			plikodczyt.open("randzapis.txt");
			while(!plikodczyt.eof()){
				plikodczyt>>liczba;
					cout<<"\n"<<liczba;
			}
			break;
		}
//		case 3:{
//			struct student{
//	string imie; 
//	string nazwisko; 
//	string m_urodzenia;
//	int rok;
//	int telefon;
//	} dane[3];
//	
//			dane[0]={"Kamil","Bonk","TG",2,222444555};
//			dane[1]={"Adam","Arent","Bytom",1,333322623};
//			dane[2]={"Arek","Dyszy","Przewodow",3,111222655};
//			for(int i=0;i<3;i++){
//				cout<<"Imie: "<<dane[i].imie<<endl;
//				cout<<"Nazwisko: "<<dane[i].nazwisko<<endl;
//				cout<<"Miejsce urodzenia: "<<dane[i].m_urodzenia<<endl;
//				cout<<"Rok: "<<dane[i].rok<<endl;
//				cout<<"Telefon: "<<dane[i].telefon<<endl;
//				cout<<"\n===================================="<<endl;
//			}
//			//Wyszukiwanie imienia i naziwiska ucznia pierwszego roku
//			for(int i=0;i<3;i++){
//			
//				if(dane[i].rok==1)
//					cout<<dane[i].imie+" ";
//				if(dane[i].rok==1)
//					cout<<dane[i].nazwisko<<endl;
//			}
//			cout<<"\n===================================="<<endl;
//			//Wyszukiwanie ucznia z numerem nazwiskiem konczacym sie na y
//			
//			for(int i=0;i<3;i++){
//				int dl=dane[i].nazwisko.size();
//				if(dane[i].nazwisko.at(dl-1)=='y'){
//					cout<<"Imie: "<<dane[i].imie<<endl;
//					cout<<"Nazwisko: "<<dane[i].nazwisko<<endl;
//				}
//			}
 
//			break;
//		}
//		case 3:{
//			
//			break;
//		}
	} 
	return 0;
}