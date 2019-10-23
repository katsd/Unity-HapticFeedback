#import <UIKit/UIKit.h>

extern "C" {

void _impactOccurred(const char *style)
{

    UIImpactFeedbackStyle feedbackStyle;
    if (strcmp(style, "heavy"))
        feedbackStyle = UIImpactFeedbackStyleHeavy;
    else if (strcmp(style, "medium"))
        feedbackStyle = UIImpactFeedbackStyleMedium;
    else if (strcmp(style, "light"))
        feedbackStyle = UIImpactFeedbackStyleLight;
    else if (strcmp(style, "rigid"))
        feedbackStyle = UIImpactFeedbackStyleRigid;
    else if (strcmp(style, "soft"))
        feedbackStyle = UIImpactFeedbackStyleSoft;
    else
        return;

    UIImpactFeedbackGenerator *generator = [[UIImpactFeedbackGenerator alloc] initWithStyle:feedbackStyle];

    [generator prepare];

    [generator impactOccurred];
}

void _notificationOccurred(const char *style)
{
    UINotificationFeedbackType feedbackStyle;
    if (strcmp(style, "error"))
        feedbackStyle = UINotificationFeedbackTypeError;
    else if (strcmp(style, "success"))
        feedbackStyle = UINotificationFeedbackTypeSuccess;
    else if (strcmp(style, "warning"))
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