#include <iostream>
#include <random>

#define MIN 0
#define MAX 1

using std::cout, std::endl;

double f(double x) {
	return (x*x + 2*x + 4)*(x*x + 2*x + 4);
}

double random_number(double lowerBound, double upperBound) {
	std::random_device rand_dev;
	std::default_random_engine generator(rand_dev());
	std::uniform_real_distribution<double> distr(lowerBound, upperBound);
	return distr(generator);
}

double calcIntegral() {
	double sum = 0;
	
	for(int i = 0; i < 1000000; ++i)
		sum += f(random_number(MIN, MAX));

	return sum /= 1000000;
}

int main() {
	cout << calcIntegral() << endl;
	return 0;
}
