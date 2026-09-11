#include "rclcpp/rclcpp.hpp"
#include "std_msgs/msg/string.hpp"

#include <memory>

class Listener : public rclcpp::Node
{
public:
    Listener() : Node("listener")
    {
        subscription_ = this->create_subscription<std_msgs::msg::String>(
            "chatter",
            10,
            std::bind(
                &Listener::message_callback,
                this,
                std::placeholders::_1));

        RCLCPP_INFO(this->get_logger(), "Listener started");
    }

private:
    void message_callback(
        const std_msgs::msg::String::SharedPtr message)
    {
        RCLCPP_INFO(
            this->get_logger(),
            "I heard: '%s'",
            message->data.c_str());
    }

    rclcpp::Subscription<std_msgs::msg::String>::SharedPtr subscription_;
};

int main(int argc, char * argv[])
{
    rclcpp::init(argc, argv);

    auto node = std::make_shared<Listener>();

    rclcpp::spin(node);

    rclcpp::shutdown();

    return 0;
}
