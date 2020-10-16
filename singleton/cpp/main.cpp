#include "app1.cpp"
#include "app2.cpp"

int main() {
    App1 app1;
    App2 app2;

    app2.doJob();
    app1.doJob();

    return 0;
}
