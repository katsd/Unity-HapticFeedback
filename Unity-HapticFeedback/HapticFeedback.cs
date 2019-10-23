﻿using System.Runtime.InteropServices;
using UnityEngine;
public enum ImpactFeedbackStyle
{
    heavy,
    medium,
    light,
    rigid,
    soft
}

public enum NotificationFeedbackStyle
{
    error,
    success,
    warning
}

public class HapticFeedback : MonoBehaviour
{
#if true//UNITY_IPHONE && !UNITY_EDITOR
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