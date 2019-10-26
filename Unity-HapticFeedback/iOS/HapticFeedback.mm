#import <UIKit/UIKit.h>

extern "C" {

void _impactOccurred(const char *style)
{

    UIImpactFeedbackStyle feedbackStyle;
    if (strcmp(style, "heavy") == 0)
        feedbackStyle = UIImpactFeedbackStyleHeavy;
    else if (strcmp(style, "medium") == 0)
        feedbackStyle = UIImpactFeedbackStyleMedium;
    else if (strcmp(style, "light") == 0)
        feedbackStyle = UIImpactFeedbackStyleLight;
    else if (strcmp(style, "rigid") == 0)
        if (@available(iOS 13.0, *)) {
            feedbackStyle = UIImpactFeedbackStyleRigid;
        } else {
            return;
        }
    else if (strcmp(style, "soft") == 0)
        if (@available(iOS 13.0, *)) {
            feedbackStyle = UIImpactFeedbackStyleSoft;
        } else {
            return;
        }
    else
        return;

    UIImpactFeedbackGenerator *generator = [[UIImpactFeedbackGenerator alloc] initWithStyle:feedbackStyle];

    [generator prepare];

    [generator impactOccurred];
}

void _notificationOccurred(const char *style)
{
    UINotificationFeedbackType feedbackStyle;
    if (strcmp(style, "error") == 0)
        feedbackStyle = UINotificationFeedbackTypeError;
    else if (strcmp(style, "success") == 0)
        feedbackStyle = UINotificationFeedbackTypeSuccess;
    else if (strcmp(style, "warning") == 0)
        feedbackStyle = UINotificationFeedbackTypeWarning;
    else
        return;

    UINotificationFeedbackGenerator *generator = [[UINotificationFeedbackGenerator alloc] init];

    [generator prepare];

    [generator notificationOccurred:feedbackStyle];
}

void _selectionChanged()
{
    UISelectionFeedbackGenerator *generator = [[UISelectionFeedbackGenerator alloc] init];

    [generator prepare];

    [generator selectionChanged];
}
}
