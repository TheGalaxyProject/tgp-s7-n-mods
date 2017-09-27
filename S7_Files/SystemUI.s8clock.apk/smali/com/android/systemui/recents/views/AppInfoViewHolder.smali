.class public Lcom/android/systemui/recents/views/AppInfoViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "AppInfoViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/recents/model/AppInfo$AppInfoCallback;


# instance fields
.field public contentView:Landroid/widget/LinearLayout;

.field public iconView:Landroid/widget/ImageView;

.field public labelView:Landroid/widget/TextView;

.field mAppInfo:Lcom/android/systemui/recents/model/AppInfo;

.field mAttr:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;

.field mContext:Landroid/content/Context;

.field mDisabled:Z

.field private mKioskId:I

.field mLoader:Lcom/android/systemui/recents/model/RecentsAppListLoader;

.field mNeedDarkFont:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/views/AppInfoViewHolder;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder;->mKioskId:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/recents/views/AppInfoViewHolder;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder;->mKioskId:I

    return p1
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 48
    iput-boolean v0, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder;->mNeedDarkFont:Z

    .line 49
    iput-boolean v0, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder;->mDisabled:Z

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder;->mKioskId:I

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder;->mContext:Landroid/content/Context;

    .line 61
    iget-object v0, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsAppListLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder;->mLoader:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    .line 63
    const v0, 0x7f130320

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder;->contentView:Landroid/widget/LinearLayout;

    .line 64
    const v0, 0x7f1301ef

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder;->labelView:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f130093

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder;->iconView:Landroid/widget/ImageView;

    .line 67
    invoke-static {}, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->getAttr()Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder;->mAttr:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;

    .line 57
    return-void
.end method

.method private startApp(Lcom/android/systemui/recents/model/AppInfo;)V
    .locals 4
    .param p1, "appInfo"    # Lcom/android/systemui/recents/model/AppInfo;

    .prologue
    .line 102
    new-instance v0, Lcom/android/systemui/recents/views/AppInfoViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/recents/views/AppInfoViewHolder$1;-><init>(Lcom/android/systemui/recents/views/AppInfoViewHolder;Lcom/android/systemui/recents/model/AppInfo;)V

    .line 136
    .local v0, "launchRunnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;

    .line 137
    const/4 v3, 0x2

    .line 136
    invoke-direct {v2, v3, v0}, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;-><init>(ILjava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 101
    return-void
.end method


# virtual methods
.method public bindToAppInfo(Lcom/android/systemui/recents/model/AppInfo;ZZ)V
    .locals 6
    .param p1, "appInfo"    # Lcom/android/systemui/recents/model/AppInfo;
    .param p2, "needDarkFont"    # Z
    .param p3, "disabled"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 150
    iget-object v0, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder;->labelView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/systemui/recents/model/AppInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder;->mNeedDarkFont:Z

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder;->labelView:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v4, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 154
    iget-object v0, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder;->labelView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder;->mAttr:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;

    iget v1, v1, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;->mItemTextDarkColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 164
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder;->labelView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder;->labelView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder;->mDisabled:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x4c

    :goto_1
    invoke-virtual {v2, v0}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 166
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder;->mDisabled:Z

    if-eqz v0, :cond_3

    .line 167
    iget-object v0, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 172
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder;->contentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder;->mAppInfo:Lcom/android/systemui/recents/model/AppInfo;

    iget-object v1, v1, Lcom/android/systemui/recents/model/AppInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder;->labelView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder;->mAttr:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;

    iget v1, v1, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;->mItemTextWhiteColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder;->mDisabled:Z

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder;->labelView:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v4, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_0

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder;->labelView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder;->mAttr:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;

    iget v1, v1, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;->mItemTextShadowSize:F

    iget-object v2, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder;->mAttr:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;

    iget v2, v2, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;->mItemTextShadowYDistance:F

    iget-object v3, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder;->mAttr:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;

    iget v3, v3, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;->mItemTextShadowColor:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_0

    .line 164
    :cond_2
    const/16 v0, 0xff

    goto :goto_1

    .line 169
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_2
.end method

.method public onBind(Lcom/android/systemui/recents/model/AppInfo;ZZ)V
    .locals 4
    .param p1, "appInfo"    # Lcom/android/systemui/recents/model/AppInfo;
    .param p2, "needDarkFont"    # Z
    .param p3, "disabled"    # Z

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder;->mAppInfo:Lcom/android/systemui/recents/model/AppInfo;

    .line 72
    iget-object v1, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder;->mAppInfo:Lcom/android/systemui/recents/model/AppInfo;

    invoke-virtual {v1, p0}, Lcom/android/systemui/recents/model/AppInfo;->setCallback(Lcom/android/systemui/recents/model/AppInfo$AppInfoCallback;)V

    .line 74
    iput-boolean p2, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder;->mNeedDarkFont:Z

    .line 75
    iput-boolean p3, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder;->mDisabled:Z

    .line 78
    iget-object v1, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder;->mLoader:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    iget-object v2, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder;->mAppInfo:Lcom/android/systemui/recents/model/AppInfo;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->loadAppInfoData(Lcom/android/systemui/recents/model/AppInfo;)V

    .line 80
    iget-object v1, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder;->mAppInfo:Lcom/android/systemui/recents/model/AppInfo;

    iget-boolean v2, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder;->mNeedDarkFont:Z

    iget-boolean v3, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder;->mDisabled:Z

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/recents/views/AppInfoViewHolder;->bindToAppInfo(Lcom/android/systemui/recents/model/AppInfo;ZZ)V

    .line 83
    iget-object v1, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 84
    .local v0, "contentParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder;->mAttr:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;

    iget v1, v1, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;->mItemContentWidth:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 70
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder;->mAppInfo:Lcom/android/systemui/recents/model/AppInfo;

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/AppInfoViewHolder;->startApp(Lcom/android/systemui/recents/model/AppInfo;)V

    .line 97
    return-void
.end method

.method public onDataLoaded(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/AppInfoViewHolder;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 177
    return-void
.end method

.method public onUnbind()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    iget-object v0, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder;->mAppInfo:Lcom/android/systemui/recents/model/AppInfo;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/AppInfo;->removeCallback()V

    .line 90
    iget-object v0, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    iget-object v0, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder;->labelView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 142
    iget-object v0, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder;->mDisabled:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x4c

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 140
    return-void

    .line 143
    :cond_1
    const/16 v0, 0xff

    goto :goto_0
.end method
