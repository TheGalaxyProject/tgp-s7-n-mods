.class public Lcom/android/settings/users/UserPreference;
.super Lcom/samsung/android/settingslib/RestrictedPreference;
.source "UserPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/users/UserPreference$1;
    }
.end annotation


# static fields
.field public static final SERIAL_NUMBER_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/users/UserPreference;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDeleteClickListener:Landroid/view/View$OnClickListener;

.field private mSerialNumber:I

.field private mSettingsClickListener:Landroid/view/View$OnClickListener;

.field private mUserId:I


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/users/UserPreference;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/users/UserPreference;->getSerialNumber()I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/android/settings/users/UserPreference$1;

    invoke-direct {v0}, Lcom/android/settings/users/UserPreference$1;-><init>()V

    .line 41
    sput-object v0, Lcom/android/settings/users/UserPreference;->SERIAL_NUMBER_COMPARATOR:Ljava/util/Comparator;

    .line 35
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "userId"    # I
    .param p4, "settingsListener"    # Landroid/view/View$OnClickListener;
    .param p5, "deleteListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/users/UserPreference;->mSerialNumber:I

    .line 59
    const/16 v0, -0xa

    iput v0, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    .line 73
    if-nez p5, :cond_0

    if-eqz p4, :cond_1

    .line 74
    :cond_0
    const v0, 0x7f040240

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserPreference;->setWidgetLayoutResource(I)V

    .line 76
    :cond_1
    iput-object p5, p0, Lcom/android/settings/users/UserPreference;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    .line 77
    iput-object p4, p0, Lcom/android/settings/users/UserPreference;->mSettingsClickListener:Landroid/view/View$OnClickListener;

    .line 78
    iput p3, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    .line 79
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserPreference;->useAdminDisabledSummary(Z)V

    .line 69
    return-void
.end method

.method private dimIcon(Z)V
    .locals 3
    .param p1, "dimmed"    # Z

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/settings/users/UserPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 84
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz p1, :cond_1

    const/16 v1, 0x66

    :goto_0
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 86
    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 82
    :cond_0
    return-void

    .line 85
    :cond_1
    const/16 v1, 0xff

    goto :goto_0
.end method

.method private getSerialNumber()I
    .locals 2

    .prologue
    .line 134
    iget v0, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/high16 v0, -0x80000000

    return v0

    .line 135
    :cond_0
    iget v0, p0, Lcom/android/settings/users/UserPreference;->mSerialNumber:I

    if-gez v0, :cond_3

    .line 137
    iget v0, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    const/16 v1, -0xa

    if-ne v0, v1, :cond_1

    .line 138
    const v0, 0x7fffffff

    return v0

    .line 139
    :cond_1
    iget v0, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    const/16 v1, -0xb

    if-ne v0, v1, :cond_2

    .line 140
    const v0, 0x7ffffffe

    return v0

    .line 142
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/users/UserPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 143
    iget v1, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    .line 142
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/users/UserPreference;->mSerialNumber:I

    .line 144
    iget v0, p0, Lcom/android/settings/users/UserPreference;->mSerialNumber:I

    if-gez v0, :cond_3

    iget v0, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    return v0

    .line 146
    :cond_3
    iget v0, p0, Lcom/android/settings/users/UserPreference;->mSerialNumber:I

    return v0
.end method


# virtual methods
.method public getUserId()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    return v0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x8

    .line 92
    invoke-super {p0, p1}, Lcom/samsung/android/settingslib/RestrictedPreference;->onBindView(Landroid/view/View;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/users/UserPreference;->isDisabledByAdmin()Z

    move-result v2

    .line 94
    .local v2, "disabledByAdmin":Z
    invoke-direct {p0, v2}, Lcom/android/settings/users/UserPreference;->dimIcon(Z)V

    .line 95
    const v7, 0x7f1105e2

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 96
    .local v6, "userDeleteWidget":Landroid/view/View;
    if-eqz v6, :cond_0

    .line 97
    if-eqz v2, :cond_4

    move v7, v8

    :goto_0
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 99
    :cond_0
    if-nez v2, :cond_3

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/users/UserPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v10, "user"

    invoke-virtual {v7, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    .line 101
    .local v5, "um":Landroid/os/UserManager;
    const v7, 0x7f11057f

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 102
    .local v0, "deleteDividerView":Landroid/view/View;
    const v7, 0x7f11057e

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 103
    .local v3, "manageDividerView":Landroid/view/View;
    const v7, 0x7f11057c

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 104
    .local v1, "deleteView":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 105
    iget-object v7, p0, Lcom/android/settings/users/UserPreference;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    if-eqz v7, :cond_1

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/users/UserPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 107
    const-string/jumbo v10, "no_remove_user"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    .line 106
    invoke-static {v7, v10, v11}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 113
    :cond_1
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 114
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 117
    :cond_2
    :goto_1
    const v7, 0x7f11057a

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 118
    .local v4, "manageView":Landroid/widget/ImageView;
    if-eqz v4, :cond_3

    .line 119
    iget-object v7, p0, Lcom/android/settings/users/UserPreference;->mSettingsClickListener:Landroid/view/View$OnClickListener;

    if-eqz v7, :cond_7

    .line 120
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    iget-object v7, p0, Lcom/android/settings/users/UserPreference;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    if-nez v7, :cond_6

    :goto_2
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 123
    iget-object v7, p0, Lcom/android/settings/users/UserPreference;->mSettingsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 91
    .end local v0    # "deleteDividerView":Landroid/view/View;
    .end local v1    # "deleteView":Landroid/view/View;
    .end local v3    # "manageDividerView":Landroid/view/View;
    .end local v4    # "manageView":Landroid/widget/ImageView;
    .end local v5    # "um":Landroid/os/UserManager;
    :cond_3
    :goto_3
    return-void

    :cond_4
    move v7, v9

    .line 97
    goto :goto_0

    .line 108
    .restart local v0    # "deleteDividerView":Landroid/view/View;
    .restart local v1    # "deleteView":Landroid/view/View;
    .restart local v3    # "manageDividerView":Landroid/view/View;
    .restart local v5    # "um":Landroid/os/UserManager;
    :cond_5
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 109
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 110
    iget-object v7, p0, Lcom/android/settings/users/UserPreference;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    invoke-virtual {v1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .restart local v4    # "manageView":Landroid/widget/ImageView;
    :cond_6
    move v9, v8

    .line 122
    goto :goto_2

    .line 126
    :cond_7
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method
