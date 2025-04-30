import 'package:flutter/material.dart';

class LabeledToggleSwitch extends StatelessWidget {
  /// The current value of the toggle switch (active or inactive)
  final bool value;

  /// Callback function to handle the toggle change
  final void Function(bool) onChanged;

  /// Labels for active and inactive states
  final String activeLabel;
  final String inactiveLabel;

  /// Colors for active and inactive states
  final Color activeColor;
  final Color inactiveColor;

  /// Custom text styles for active and inactive labels
  final TextStyle? activeTextStyle;
  final TextStyle? inactiveTextStyle;

  /// Height, knob size for the toggle switch
  final double height;
  final double knobSize;

  /// Duration of the animation for switching states
  final Duration animationDuration;

  /// Padding around the toggle switch
  final EdgeInsetsGeometry padding;

  /// Border color for the toggle switch
  final Color? borderColor;

  /// Knob Border color when toggle is active
  final Color activeKnobBorderColor;

  /// Border color when toggle is inactive
  final Color inactiveKnobBorderColor;

  /// Width of the toggle switch, can be null to auto size based on content
  final double? width;

  /// New spacing between children of Row (label - knob - label)
  final double spacing;

  /// Constructor with default values for various parameters
  const LabeledToggleSwitch({
    super.key,
    required this.value,
    required this.onChanged,
    this.activeLabel = 'Active',
    this.inactiveLabel = 'Inactive',
    this.activeColor = Colors.green,
    this.inactiveColor = Colors.red,
    this.activeKnobBorderColor = Colors.white,
    this.inactiveKnobBorderColor = Colors.white,
    this.activeTextStyle,
    this.inactiveTextStyle,
    this.height = 32,
    this.knobSize = 20,
    this.width,
    this.animationDuration = const Duration(milliseconds: 200),
    this.padding = const EdgeInsets.symmetric(
      vertical: 4,
      horizontal: 6,
    ), // Default padding
    this.borderColor,
    this.spacing = 8.0,
  });

  @override
  Widget build(BuildContext context) {
    /// GestureDetector to detect taps and toggle the state
    return GestureDetector(
      onTap: () => onChanged(!value), // Toggle the state when tapped
      child: AnimatedContainer(
        duration: animationDuration, // Duration of animation on state change
        height: height, // Height of the toggle switch
        width:
            width, // Use the width if provided, otherwise it adjusts based on content
        padding: padding, // Padding around the toggle switch
        decoration: BoxDecoration(
          color:
              value
                  ? activeColor
                  : inactiveColor, // Background color based on value
          borderRadius: BorderRadius.circular(
            30,
          ), // Rounded corners for the toggle
          border:
              borderColor == null
                  ? null
                  : Border.all(
                    color: borderColor!, // Border color passed in constructor
                    width: 1, // Border width
                  ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min, // Adjust width based on content
          mainAxisAlignment:
              MainAxisAlignment.spaceBetween, // Space between the elements
          spacing: spacing,
          children: [
            // Display the active label if the toggle is in the active state
            if (value)
              Text(
                activeLabel,
                style:
                    activeTextStyle ??
                    const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            // The circular knob that switches between active/inactive states
            Container(
              height: knobSize, // Size of the knob
              width: knobSize, // Size of the knob
              decoration: BoxDecoration(
                color:
                    value
                        ? activeColor
                        : Colors.white, // Knob color based on state
                shape: BoxShape.circle, // Round shape for the knob
                border: Border.all(
                  color:
                      value
                          ? activeKnobBorderColor
                          : inactiveKnobBorderColor, // Border color of the knob
                  width: 2,
                ),
              ),
            ),
            // Display the inactive label if the toggle is in the inactive state
            if (!value)
              Text(
                inactiveLabel,
                style:
                    inactiveTextStyle ??
                    const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
              ),
          ],
        ),
      ),
    );
  }
}
