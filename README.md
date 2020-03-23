# Unity-HapticFeedback

iOS Haptic Feedback for Unity

## Install

Copy `Unity-HapticFeedback/` to your Unity project (`Assets/Plugins/`)

## Usage

```cs
//Impact Feedback

HapticFeedback.ImpactOccurred(ImpactFeedbackStyle.Light);

HapticFeedback.ImpactOccurred(ImpactFeedbackStyle.Medium);

HapticFeedback.ImpactOccurred(ImpactFeedbackStyle.Heavy);

HapticFeedback.ImpactOccurred(ImpactFeedbackStyle.Rigid);

HapticFeedback.ImpactOccurred(ImpactFeedbackStyle.Soft);


//Notification Feedback

HapticFeedback.NotificationOccurred(NotificationFeedbackStyle.Error);

HapticFeedback.NotificationOccurred(NotificationFeedbackStyle.Success);

HapticFeedback.NotificationOccurred(NotificationFeedbackStyle.Warning);


//Selection Feedback

HapticFeedback.SelectionChanged();

```
