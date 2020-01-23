#include <SFML/Graphics.hpp>
#include <algorithm>
#include <iostream>
#include <cmath>
#include <map>

using namespace std;
using namespace sf;

constexpr int WINDOW_WIDTH{800}, WINDOW_HEIGHT{600}, NUMBER_OF_BALLS{5}, COLORS{3};
constexpr float BALL_RADIUS{40.f}, BALL_INDENT{200.f}, VELOCITY_X{200.f}, VELOCITY_Y{80.f};

int colors[NUMBER_OF_BALLS][COLORS] = {
    {0, 141, 15},
    {242, 0, 0},
    {237, 255, 0},
    {2, 78, 128},
    {120, 141, 0}};

struct Ball
{
    CircleShape shape;
    Vector2f velocity{-VELOCITY_X, -VELOCITY_Y};

    Ball(int color1, int color2, int color3)
    {
        shape.setPosition(1 + rand() % (800 - 40), 1 + rand() % (600 - 40));
        shape.setRadius(BALL_RADIUS);
        shape.setFillColor(Color(color1, color2, color3));
        shape.setOrigin(BALL_RADIUS, BALL_RADIUS);
    }

    void updateBall(const float &dT)
    {
        Vector2f position = shape.getPosition();
        position += velocity * dT;

        if ((position.x + BALL_RADIUS >= WINDOW_WIDTH) && (velocity.x > 0))
            velocity.x = -velocity.x;

        if ((position.x - BALL_RADIUS < 0) && (velocity.x < 0))
            velocity.x = -velocity.x;

        if ((position.y + BALL_RADIUS >= WINDOW_HEIGHT) && (velocity.y > 0))
            velocity.y = -velocity.y;

        if ((position.y - BALL_RADIUS < 0) && (velocity.y < 0))
            velocity.y = -velocity.y;

        shape.setPosition(position);
    }
};

void initBricks(vector<Ball> &myBall)
{
    for (int element = 0; element < NUMBER_OF_BALLS; ++element)
        myBall.emplace_back(colors[element][0], colors[element][1], colors[element][2]);
}

void updateDate(vector<Ball> &myBall, Clock &clock)
{
    const float deltaTime = clock.restart().asSeconds();

    for (auto &ball : myBall)
        ball.updateBall(deltaTime);
}

void pollEvents(RenderWindow &window)
{
    Event event;
    while (window.pollEvent(event))
    {
        switch (event.type)
        {
        case Event::Closed:
            window.close();
            break;
        default:
            break;
        }
    }
}

void redrawWorld(vector<Ball> &myBall, RenderWindow &window)
{
    window.setFramerateLimit(120);
    window.clear(Color::Black);
    for (auto &ball : myBall)
        window.draw(ball.shape);
    window.display();
}

int main()
{
    ContextSettings settings;
    settings.antialiasingLevel = 8;
    RenderWindow window(VideoMode(WINDOW_WIDTH, WINDOW_HEIGHT), "Mass clashes");
    Clock clock;

    vector<Ball> balls;
    initBricks(balls);

    while (window.isOpen())
    {
        pollEvents(window);
        updateDate(balls, clock);
        redrawWorld(balls, window);
    }
}