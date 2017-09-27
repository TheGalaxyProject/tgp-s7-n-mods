.class public Lcom/android/systemui/statusbar/phone/DemoStatusIcons;
.super Landroid/widget/LinearLayout;
.source "DemoStatusIcons.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;


# instance fields
.field private mDemoMode:Z

.field private final mIconSize:I

.field private final mStatusIcons:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;I)V
    .locals 2
    .param p1, "statusIcons"    # Landroid/widget/LinearLayout;
    .param p2, "iconSize"    # I

    .prologue
    .line 40
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 41
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    .line 42
    iput p2, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mIconSize:I

    .line 44
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->setOrientation(I)V

    .line 46
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->setGravity(I)V

    .line 47
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 48
    .local v0, "p":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 39
    return-void
.end method

.method private updateSlot(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "iconPkg"    # Ljava/lang/String;
    .param p3, "iconId"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 126
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    if-nez v1, :cond_0

    return-void

    .line 127
    :cond_0
    if-nez p2, :cond_1

    .line 128
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 130
    :cond_1
    const/4 v8, -0x1

    .line 131
    .local v8, "removeIndex":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->getChildCount()I

    move-result v1

    if-ge v7, v1, :cond_2

    .line 132
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 133
    .local v9, "v":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/StatusBarIconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 134
    if-nez p3, :cond_4

    .line 135
    move v8, v7

    .line 146
    .end local v9    # "v":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_2
    if-nez p3, :cond_6

    .line 147
    const/4 v1, -0x1

    if-eq v8, v1, :cond_3

    .line 148
    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->removeViewAt(I)V

    .line 150
    :cond_3
    return-void

    .line 138
    .restart local v9    # "v":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_4
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v0

    .line 139
    .local v0, "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    iget-object v1, v0, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p3}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    .line 140
    invoke-virtual {v9, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 141
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateDrawable()V

    .line 142
    return-void

    .line 131
    .end local v0    # "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 152
    .end local v9    # "v":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_6
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const-string/jumbo v6, "Demo"

    move-object v1, p2

    move v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    .line 153
    .restart local v0    # "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    new-instance v9, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v9, v1, v10, v10}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V

    .line 154
    .restart local v9    # "v":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v9, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setTag(Ljava/lang/Object;)V

    .line 155
    invoke-virtual {v9, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 156
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mIconSize:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mIconSize:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v9, v4, v1}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 125
    return-void
.end method


# virtual methods
.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 13
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 53
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    if-nez v11, :cond_1

    const-string/jumbo v11, "enter"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 54
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    .line 55
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 56
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->setVisibility(I)V

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    if-eqz v11, :cond_2

    const-string/jumbo v11, "exit"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 58
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    .line 59
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 60
    const/16 v11, 0x8

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->setVisibility(I)V

    goto :goto_0

    .line 61
    :cond_2
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    if-eqz v11, :cond_0

    const-string/jumbo v11, "status"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 62
    const-string/jumbo v11, "volume"

    invoke-virtual {p2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 63
    .local v9, "volume":Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 64
    const-string/jumbo v11, "vibrate"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    const v4, 0x7f02060d

    .line 66
    .local v4, "iconId":I
    :goto_1
    const-string/jumbo v11, "volume"

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12, v4}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 68
    .end local v4    # "iconId":I
    :cond_3
    const-string/jumbo v11, "zen"

    invoke-virtual {p2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 69
    .local v10, "zen":Ljava/lang/String;
    if-eqz v10, :cond_4

    .line 70
    const-string/jumbo v11, "important"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    const v4, 0x7f0206f8

    .line 73
    .restart local v4    # "iconId":I
    :goto_2
    const-string/jumbo v11, "zen"

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12, v4}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 75
    .end local v4    # "iconId":I
    :cond_4
    const-string/jumbo v11, "bluetooth"

    invoke-virtual {p2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "bt":Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 77
    const-string/jumbo v11, "disconnected"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    const v4, 0x7f020583

    .line 80
    .restart local v4    # "iconId":I
    :goto_3
    const-string/jumbo v11, "bluetooth"

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12, v4}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 82
    .end local v4    # "iconId":I
    :cond_5
    const-string/jumbo v11, "location"

    invoke-virtual {p2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 83
    .local v5, "location":Ljava/lang/String;
    if-eqz v5, :cond_6

    .line 84
    const-string/jumbo v11, "show"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    const v4, 0x7f0205cc

    .line 86
    .restart local v4    # "iconId":I
    :goto_4
    const-string/jumbo v11, "location"

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12, v4}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 88
    .end local v4    # "iconId":I
    :cond_6
    const-string/jumbo v11, "alarm"

    invoke-virtual {p2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "alarm":Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 90
    const-string/jumbo v11, "show"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    const v4, 0x7f02057d

    .line 92
    .restart local v4    # "iconId":I
    :goto_5
    const-string/jumbo v11, "alarm_clock"

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12, v4}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 94
    .end local v4    # "iconId":I
    :cond_7
    const-string/jumbo v11, "tty"

    invoke-virtual {p2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 95
    .local v8, "tty":Ljava/lang/String;
    if-eqz v8, :cond_8

    .line 96
    const-string/jumbo v11, "show"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    const v4, 0x7f0206c7

    .line 98
    .restart local v4    # "iconId":I
    :goto_6
    const-string/jumbo v11, "tty"

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12, v4}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 100
    .end local v4    # "iconId":I
    :cond_8
    const-string/jumbo v11, "mute"

    invoke-virtual {p2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 101
    .local v6, "mute":Ljava/lang/String;
    if-eqz v6, :cond_9

    .line 102
    const-string/jumbo v11, "show"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    const v4, 0x1080076

    .line 104
    .restart local v4    # "iconId":I
    :goto_7
    const-string/jumbo v11, "mute"

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12, v4}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 106
    .end local v4    # "iconId":I
    :cond_9
    const-string/jumbo v11, "speakerphone"

    invoke-virtual {p2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 107
    .local v7, "speakerphone":Ljava/lang/String;
    if-eqz v7, :cond_a

    .line 108
    const-string/jumbo v11, "show"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    const v4, 0x1080087

    .line 110
    .restart local v4    # "iconId":I
    :goto_8
    const-string/jumbo v11, "speakerphone"

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12, v4}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 112
    .end local v4    # "iconId":I
    :cond_a
    const-string/jumbo v11, "cast"

    invoke-virtual {p2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "cast":Ljava/lang/String;
    if-eqz v2, :cond_b

    .line 114
    const-string/jumbo v11, "show"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_16

    const v4, 0x7f020582

    .line 115
    .restart local v4    # "iconId":I
    :goto_9
    const-string/jumbo v11, "cast"

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12, v4}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 117
    .end local v4    # "iconId":I
    :cond_b
    const-string/jumbo v11, "hotspot"

    invoke-virtual {p2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, "hotspot":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 119
    const-string/jumbo v11, "show"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_17

    const v4, 0x7f0205cb

    .line 120
    .restart local v4    # "iconId":I
    :goto_a
    const-string/jumbo v11, "hotspot"

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12, v4}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 65
    .end local v0    # "alarm":Ljava/lang/String;
    .end local v1    # "bt":Ljava/lang/String;
    .end local v2    # "cast":Ljava/lang/String;
    .end local v3    # "hotspot":Ljava/lang/String;
    .end local v4    # "iconId":I
    .end local v5    # "location":Ljava/lang/String;
    .end local v6    # "mute":Ljava/lang/String;
    .end local v7    # "speakerphone":Ljava/lang/String;
    .end local v8    # "tty":Ljava/lang/String;
    .end local v10    # "zen":Ljava/lang/String;
    :cond_c
    const/4 v4, 0x0

    .restart local v4    # "iconId":I
    goto/16 :goto_1

    .line 71
    .end local v4    # "iconId":I
    .restart local v10    # "zen":Ljava/lang/String;
    :cond_d
    const-string/jumbo v11, "none"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const v4, 0x7f0206f9

    .restart local v4    # "iconId":I
    goto/16 :goto_2

    .line 72
    .end local v4    # "iconId":I
    :cond_e
    const/4 v4, 0x0

    .restart local v4    # "iconId":I
    goto/16 :goto_2

    .line 78
    .end local v4    # "iconId":I
    .restart local v1    # "bt":Ljava/lang/String;
    :cond_f
    const-string/jumbo v11, "connected"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    const v4, 0x7f020584

    .restart local v4    # "iconId":I
    goto/16 :goto_3

    .line 79
    .end local v4    # "iconId":I
    :cond_10
    const/4 v4, 0x0

    .restart local v4    # "iconId":I
    goto/16 :goto_3

    .line 85
    .end local v4    # "iconId":I
    .restart local v5    # "location":Ljava/lang/String;
    :cond_11
    const/4 v4, 0x0

    .restart local v4    # "iconId":I
    goto/16 :goto_4

    .line 91
    .end local v4    # "iconId":I
    .restart local v0    # "alarm":Ljava/lang/String;
    :cond_12
    const/4 v4, 0x0

    .restart local v4    # "iconId":I
    goto/16 :goto_5

    .line 97
    .end local v4    # "iconId":I
    .restart local v8    # "tty":Ljava/lang/String;
    :cond_13
    const/4 v4, 0x0

    .restart local v4    # "iconId":I
    goto/16 :goto_6

    .line 103
    .end local v4    # "iconId":I
    .restart local v6    # "mute":Ljava/lang/String;
    :cond_14
    const/4 v4, 0x0

    .restart local v4    # "iconId":I
    goto/16 :goto_7

    .line 109
    .end local v4    # "iconId":I
    .restart local v7    # "speakerphone":Ljava/lang/String;
    :cond_15
    const/4 v4, 0x0

    .restart local v4    # "iconId":I
    goto :goto_8

    .line 114
    .end local v4    # "iconId":I
    .restart local v2    # "cast":Ljava/lang/String;
    :cond_16
    const/4 v4, 0x0

    .restart local v4    # "iconId":I
    goto :goto_9

    .line 119
    .end local v4    # "iconId":I
    .restart local v3    # "hotspot":Ljava/lang/String;
    :cond_17
    const/4 v4, 0x0

    .restart local v4    # "iconId":I
    goto :goto_a
.end method
