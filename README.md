# Unity-HapticFeedback

iOS Haptic Feedback for Unity

## Install

Copy `Unity-HapticFeedback/` to your Unity project (`Assets/Plugins/`)

## Usage

```cs
//Impact Feedback

HapticFeedback.ImpactOccurred(ImpactFeedbackStyle.light);

HapticFeedback.ImpactOccurred(ImpactFeedbackStyle.medium);

HapticFeedback.ImpactOccurred(ImpactFeedbackStyle.heavy);

HapticFeedback.ImpactOccurred(ImpactFeedbackStyle.rigid);

HapticFeedback.ImpactOccurred(ImpactFeedbackStyle.soft);


//Notification Feedback

HapticFeedback.NotificationOccurred(NotificationFeedbackStyle.error);

HapticFeedback.NotificationOccurred(NotificationFeedbackStyle.success);

HapticFeedback.NotificationOccurred(NotificationFeedbackStyle.warning);


//Selection Feedback

HapticFeedback.SelectionChanged();

```
