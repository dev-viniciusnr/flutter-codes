#include <iostream>
#include "rational.h" 

using std::cout;
using std::endl;

/*
  Observe abaixo que agora somos obrigados a dar um nome para o
  parâmetro. A função já está implementada, use como referência para
  todas as outras.
 */
Rational::Rational( int n, int d ) {
  numerator = n; 
  denominator = d; 
  reduction(); 
}

/*
  Abaixo o método que deve multiplicar dois números racionais. O
  primeiro número racional é a instância atual da classe, o segundo
  número racional é o que veio por parâmetro. Note que a multiplicação
  não deve alterar nenhum desses objetos, mas criar um terceiro objeto
  que será devolvido ao usuário desta função.
 */

Rational Rational::multiplication( const Rational &m ) {
  Rational t; // Cria um objeto racional que será retornaldo.

  /*
    Note que estamos dentro da classe Rational. Nesse caso, podemos
    acessar os atributos privados "numerator" e
    "denominator". Qualquer tentativa de acessar esses atributos feita
    fora da classe gerará um erro. Note que esta filosofia é diferente
    do "private" da linguagem "Java".
   */
  t.numerator   = m.numerator * numerator;
  t.denominator = m.denominator * denominator;
  t.reduction(); // Esta função auxiliar evita uma grande quantidade
		 // de problema.
  return t;
} 


/*
  Abaixo os outros métodos que você deve implementar. Eu já comecei a
  implementação de todos eles para você.
 */
Rational Rational::addition( const Rational &a ) {
  Rational t;

  t.numerator   = (a.numerator * denominator) + (numerator * a.denominator);
  t.denominator = a.denominator * denominator;

  t.reduction();
  return t;
}

Rational Rational::subtraction( const Rational &s ){
  Rational t;
  t.numerator   = (s.numerator * denominator) - (numerator * s.denominator);
  t.denominator = s.denominator * denominator;

  t.reduction();
  return t;
}

Rational Rational::division( const Rational &v ){
  Rational t;
  t.numerator   = v.numerator * denominator;
  t.denominator = v.denominator * numerator;

  t.reduction();
  return t;
}

/*
  Crie agora os métodos que vão imprimir o número racional na tela do
  usuário. Não esqueça da divisão por zero. Acredito que você
  precisará fazer algumas pesquisas na internet e no StackOverFlow.
 */
void Rational::printRational () {
  if (denominator = 0)
		cout<< "Error" <<endl;
	else{
		cout << numerator << "/" << denominator <<endl;
	}
}

void Rational::printRationalAsDouble(){
  if (denominator = 0)
		cout << "Error" <<endl;
	else
		cout << numerator / denominator << "." << numerator%denominator <<endl; 
}


/*
  Implemente agora o método privado "reduction". Mostre ao professor
  que você saber computar o máximo divisor comum de dois números.
 */
void Rational::reduction() {
  int n = numerator < 0 ? -numerator : numerator;
	int d = denominator;
	int maior = n > d ? n : d;

	int mmc = 0;

	for (int i = maior; i>= 2; i--)
		if(numerator % i == 0 && denominator % i == 0){
			mmc = i;
			break;
		}
	if (mmc != 0) {
		numerator /= mmc;
		denominator /= mmc;
		}
}
