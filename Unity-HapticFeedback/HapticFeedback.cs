using System.Runtime.InteropServices;

public enum ImpactFeedbackStyle
{
    Heavy,
    Medium,
    Light,
    Rigid,
    Soft
}

public enum NotificationFeedbackStyle
{
    Error,
    Success,
    Warning
}

public class HapticFeedback
{
#if UNITY_IPHONE && !UNITY_EDITOR
    public static void ImpactOccurred(ImpactFeedbackStyle style)
    {
        _impactOccurred(style.ToString());
    }

    public static void NotificationOccurred(NotificationFeedbackStyle style)
    {
        _notificationOccurred(style.ToString());
    }

    public static void SelectionChanged()
    {
        _selectionChanged();
    }

    [DllImport("__Internal")]
    static private extern void _impactOccurred(string style);

    [DllImport("__Internal")]
    static private extern void _notificationOccurred(string style);

    [DllImport("__Internal")]
    static private extern void _selectionChanged();

#else
    public static void ImpactOccurred(ImpactFeedbackStyle style)
    {
    }

    public static void NotificationOccurred(NotificationFeedbackStyle style)
    {
    }

    public static void SelectionChanged()
    {
    }

#endif
}