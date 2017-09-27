.class public Lcom/android/systemui/statusbar/policy/SplitClockView;
.super Landroid/widget/LinearLayout;
.source "SplitClockView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/SplitClockView$1;
    }
.end annotation


# instance fields
.field private mAmPmView:Landroid/widget/TextClock;

.field private mAmPmViewFront:Landroid/widget/TextClock;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mRtlState:Z

.field private mTimeView:Landroid/widget/TextClock;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/statusbar/policy/SplitClockView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SplitClockView;->updatePatterns()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance v0, Lcom/android/systemui/statusbar/policy/SplitClockView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/SplitClockView$1;-><init>(Lcom/android/systemui/statusbar/policy/SplitClockView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 58
    return-void
.end method

.method private static getAmPmPartEndIndex(Ljava/lang/String;Z)I
    .locals 10
    .param p0, "formatString"    # Ljava/lang/String;
    .param p1, "isAmPmLeft"    # Z

    .prologue
    const/16 v9, 0x61

    const/16 v8, 0x41

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 164
    const/4 v1, 0x0

    .line 165
    .local v1, "hasAmPm":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 166
    .local v5, "length":I
    if-eqz p1, :cond_7

    .line 167
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_f

    .line 168
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 169
    .local v0, "c":C
    if-eq v0, v9, :cond_0

    if-ne v0, v8, :cond_3

    :cond_0
    const/4 v3, 0x1

    .line 170
    .local v3, "isAmPm":Z
    :goto_1
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    .line 171
    .local v4, "isWhitespace":Z
    if-eqz v3, :cond_1

    .line 172
    const/4 v1, 0x1

    .line 174
    :cond_1
    if-nez v3, :cond_2

    if-eqz v4, :cond_4

    .line 167
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 169
    .end local v3    # "isAmPm":Z
    .end local v4    # "isWhitespace":Z
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "isAmPm":Z
    goto :goto_1

    .line 177
    .restart local v4    # "isWhitespace":Z
    :cond_4
    if-nez v2, :cond_5

    .line 179
    return v6

    .line 183
    :cond_5
    if-eqz v1, :cond_6

    .end local v2    # "i":I
    :goto_2
    return v2

    .restart local v2    # "i":I
    :cond_6
    move v2, v6

    goto :goto_2

    .line 187
    .end local v0    # "c":C
    .end local v2    # "i":I
    .end local v3    # "isAmPm":Z
    .end local v4    # "isWhitespace":Z
    :cond_7
    add-int/lit8 v2, v5, -0x1

    .restart local v2    # "i":I
    :goto_3
    if-ltz v2, :cond_f

    .line 188
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 189
    .restart local v0    # "c":C
    if-eq v0, v9, :cond_8

    if-ne v0, v8, :cond_b

    :cond_8
    const/4 v3, 0x1

    .line 190
    .restart local v3    # "isAmPm":Z
    :goto_4
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    .line 191
    .restart local v4    # "isWhitespace":Z
    if-eqz v3, :cond_9

    .line 192
    const/4 v1, 0x1

    .line 194
    :cond_9
    if-nez v3, :cond_a

    if-eqz v4, :cond_c

    .line 187
    :cond_a
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 189
    .end local v3    # "isAmPm":Z
    .end local v4    # "isWhitespace":Z
    :cond_b
    const/4 v3, 0x0

    .restart local v3    # "isAmPm":Z
    goto :goto_4

    .line 197
    .restart local v4    # "isWhitespace":Z
    :cond_c
    add-int/lit8 v7, v5, -0x1

    if-ne v2, v7, :cond_d

    .line 199
    return v6

    .line 203
    :cond_d
    if-eqz v1, :cond_e

    add-int/lit8 v6, v2, 0x1

    :cond_e
    return v6

    .line 210
    .end local v0    # "c":C
    .end local v3    # "isAmPm":Z
    .end local v4    # "isWhitespace":Z
    :cond_f
    if-eqz v1, :cond_10

    move v6, v7

    :cond_10
    return v6
.end method

.method private updatePatterns()V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 101
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SplitClockView;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 102
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    .line 101
    invoke-static {v6, v7}, Landroid/text/format/DateFormat;->getTimeFormatString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "formatString":Ljava/lang/String;
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x61

    if-eq v6, v7, :cond_0

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x41

    if-ne v6, v7, :cond_2

    :cond_0
    const/4 v3, 0x1

    .line 104
    .local v3, "isAmPmFront":Z
    :goto_0
    const/4 v4, 0x0

    .line 105
    .local v4, "isLTRAmpm":Z
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmView:Landroid/widget/TextClock;

    invoke-virtual {v6}, Landroid/widget/TextClock;->getVisibility()I

    move-result v6

    if-nez v6, :cond_4

    .line 106
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmView:Landroid/widget/TextClock;

    invoke-virtual {v6}, Landroid/widget/TextClock;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-le v6, v9, :cond_1

    .line 107
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmView:Landroid/widget/TextClock;

    invoke-virtual {v6}, Landroid/widget/TextClock;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v6

    if-nez v6, :cond_3

    const/4 v4, 0x1

    .line 113
    :cond_1
    :goto_1
    if-eqz v3, :cond_6

    invoke-static {v1, v9}, Lcom/android/systemui/statusbar/policy/SplitClockView;->getAmPmPartEndIndex(Ljava/lang/String;Z)I

    move-result v2

    .line 118
    .local v2, "index":I
    :goto_2
    const/4 v6, -0x1

    if-ne v2, v6, :cond_7

    .line 119
    move-object v5, v1

    .line 120
    .local v5, "timeString":Ljava/lang/String;
    const-string/jumbo v0, ""

    .line 121
    .local v0, "amPmString":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmViewFront:Landroid/widget/TextClock;

    invoke-virtual {v6, v10}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 122
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmView:Landroid/widget/TextClock;

    invoke-virtual {v6, v10}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 151
    :goto_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mTimeView:Landroid/widget/TextClock;

    invoke-virtual {v6, v5}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mTimeView:Landroid/widget/TextClock;

    invoke-virtual {v6, v5}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mTimeView:Landroid/widget/TextClock;

    invoke-virtual {v6, v1}, Landroid/widget/TextClock;->setContentDescriptionFormat12Hour(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mTimeView:Landroid/widget/TextClock;

    invoke-virtual {v6, v1}, Landroid/widget/TextClock;->setContentDescriptionFormat24Hour(Ljava/lang/CharSequence;)V

    .line 100
    return-void

    .line 103
    .end local v0    # "amPmString":Ljava/lang/String;
    .end local v2    # "index":I
    .end local v3    # "isAmPmFront":Z
    .end local v4    # "isLTRAmpm":Z
    .end local v5    # "timeString":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "isAmPmFront":Z
    goto :goto_0

    .line 107
    .restart local v4    # "isLTRAmpm":Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 110
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmViewFront:Landroid/widget/TextClock;

    invoke-virtual {v6}, Landroid/widget/TextClock;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-le v6, v9, :cond_1

    .line 111
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmViewFront:Landroid/widget/TextClock;

    invoke-virtual {v6}, Landroid/widget/TextClock;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v6

    if-nez v6, :cond_5

    const/4 v4, 0x1

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    .line 114
    :cond_6
    invoke-static {v1, v8}, Lcom/android/systemui/statusbar/policy/SplitClockView;->getAmPmPartEndIndex(Ljava/lang/String;Z)I

    move-result v2

    goto :goto_2

    .line 126
    .restart local v2    # "index":I
    :cond_7
    if-eqz v3, :cond_8

    .line 127
    invoke-virtual {v1, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 128
    .restart local v0    # "amPmString":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 129
    .restart local v5    # "timeString":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmViewFront:Landroid/widget/TextClock;

    invoke-virtual {v6, v8}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 130
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmView:Landroid/widget/TextClock;

    invoke-virtual {v6, v10}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 131
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmViewFront:Landroid/widget/TextClock;

    invoke-virtual {v6, v0}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmViewFront:Landroid/widget/TextClock;

    invoke-virtual {v6, v0}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 134
    .end local v0    # "amPmString":Ljava/lang/String;
    .end local v5    # "timeString":Ljava/lang/String;
    :cond_8
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mRtlState:Z

    if-eqz v6, :cond_9

    if-eqz v4, :cond_9

    .line 135
    invoke-virtual {v1, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 136
    .restart local v5    # "timeString":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 137
    .restart local v0    # "amPmString":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmViewFront:Landroid/widget/TextClock;

    invoke-virtual {v6, v8}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 138
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmView:Landroid/widget/TextClock;

    invoke-virtual {v6, v10}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 139
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmViewFront:Landroid/widget/TextClock;

    invoke-virtual {v6, v0}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmViewFront:Landroid/widget/TextClock;

    invoke-virtual {v6, v0}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 142
    .end local v0    # "amPmString":Ljava/lang/String;
    .end local v5    # "timeString":Ljava/lang/String;
    :cond_9
    invoke-virtual {v1, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 143
    .restart local v5    # "timeString":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 144
    .restart local v0    # "amPmString":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmViewFront:Landroid/widget/TextClock;

    invoke-virtual {v6, v10}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 145
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmView:Landroid/widget/TextClock;

    invoke-virtual {v6, v8}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 146
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmView:Landroid/widget/TextClock;

    invoke-virtual {v6, v0}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmView:Landroid/widget/TextClock;

    invoke-virtual {v6, v0}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 74
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 76
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 77
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.TIME_SET"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    const-string/jumbo v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    const-string/jumbo v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    const-string/jumbo v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    const-string/jumbo v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SplitClockView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 84
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SplitClockView;->updatePatterns()V

    .line 73
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 90
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SplitClockView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 88
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 64
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 65
    const v0, 0x7f1303b1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/SplitClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mTimeView:Landroid/widget/TextClock;

    .line 66
    const v0, 0x7f1303b2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/SplitClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmView:Landroid/widget/TextClock;

    .line 67
    const v0, 0x7f1303b0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/SplitClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmViewFront:Landroid/widget/TextClock;

    .line 68
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mTimeView:Landroid/widget/TextClock;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setShowCurrentUserTime(Z)V

    .line 69
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmView:Landroid/widget/TextClock;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setShowCurrentUserTime(Z)V

    .line 63
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    .line 96
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SplitClockView;->isLayoutRtl()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mRtlState:Z

    .line 97
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SplitClockView;->updatePatterns()V

    .line 94
    return-void
.end method
