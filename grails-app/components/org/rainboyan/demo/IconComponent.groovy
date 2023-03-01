package org.rainboyan.demo

class IconComponent {
    String name

    def render() {
        inline """
i(class: "bi bi-$name") {
}
"""
    }
}
