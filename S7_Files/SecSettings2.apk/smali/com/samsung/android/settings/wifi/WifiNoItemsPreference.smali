.class public Lcom/samsung/android/settings/wifi/WifiNoItemsPreference;
.super Landroid/preference/Preference;
.source "WifiNoItemsPreference.java"


# static fields
.field private static final DBG:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDividerHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiNoItemsPreference;->DBG:Z

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dividerHeight"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 61
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiNoItemsPreference;->mContext:Landroid/content/Context;

    .line 62
    iput p2, p0, Lcom/samsung/android/settings/wifi/WifiNoItemsPreference;->mDividerHeight:I

    .line 64
    const v0, 0x7f040221

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiNoItemsPreference;->setLayoutResource(I)V

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiNoItemsPreference;->setEnabled(Z)V

    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiNoItemsPreference;->setSelectable(Z)V

    .line 58
    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 85
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 86
    .local v2, "v":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    .line 88
    .local v0, "height":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 89
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int v3, v0, v3

    iget v4, p0, Lcom/samsung/android/settings/wifi/WifiNoItemsPreference;->mDividerHeight:I

    sub-int v0, v3, v4

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 94
    return-object v2
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, -0x1

    .line 72
    sget-boolean v2, Lcom/samsung/android/settings/wifi/WifiNoItemsPreference;->DBG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "WifiNoItemsPreference"

    const-string/jumbo v3, "onCreateView"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiNoItemsPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 75
    .local v1, "linearLayout":Landroid/widget/LinearLayout;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 77
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    invoke-super {p0, v1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method
