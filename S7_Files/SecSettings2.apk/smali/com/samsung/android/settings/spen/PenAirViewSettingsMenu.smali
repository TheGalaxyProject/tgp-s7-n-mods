.class public Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "PenAirViewSettingsMenu.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu$1;
    }
.end annotation


# static fields
.field private static mActivity:Landroid/app/Activity;


# instance fields
.field private guideView:Landroid/view/View;

.field private mAirViewDialog:Landroid/app/AlertDialog;

.field private mAirViewObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mPointArea:Landroid/widget/LinearLayout;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTalkbackDisableDialog:Landroid/app/AlertDialog;

.field private mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

.field private mViewPagerAdapter:Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter;


# direct methods
.method static synthetic -get0()Landroid/app/Activity;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;)Lcom/samsung/android/settings/WrapContentHeightViewPager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 77
    iput-object v0, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->mAirViewDialog:Landroid/app/AlertDialog;

    .line 78
    iput-object v0, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 85
    iput-object v0, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 88
    iput-object v0, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->guideView:Landroid/view/View;

    .line 95
    new-instance v0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu$1;-><init>(Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->mAirViewObserver:Landroid/database/ContentObserver;

    .line 62
    return-void
.end method

.method private createAirViewSetting(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 126
    if-eqz p2, :cond_0

    .line 127
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 128
    :cond_0
    const v4, 0x7f04002a

    invoke-virtual {p1, v4, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->guideView:Landroid/view/View;

    .line 129
    iget-object v4, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->guideView:Landroid/view/View;

    const v5, 0x7f110152

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/WrapContentHeightViewPager;

    iput-object v4, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    .line 130
    new-instance v4, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->mViewPagerAdapter:Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter;

    .line 131
    iget-object v4, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    iget-object v5, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->mViewPagerAdapter:Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 132
    iget-object v4, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    iget-object v5, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->mViewPagerAdapter:Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter;

    invoke-virtual {v5}, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setOffscreenPageLimit(I)V

    .line 133
    iget-object v4, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    new-instance v5, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu$2;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu$2;-><init>(Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;)V

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 146
    iget-object v4, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->guideView:Landroid/view/View;

    const v5, 0x7f1103c3

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->mPointArea:Landroid/widget/LinearLayout;

    .line 147
    iget-object v4, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->mViewPagerAdapter:Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter;->getCount()I

    move-result v3

    .line 148
    .local v3, "pointCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 149
    move v0, v1

    .line 151
    .local v0, "current":I
    const v4, 0x7f04006e

    invoke-virtual {p1, v4, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 152
    .local v2, "point":Landroid/widget/ImageView;
    const v4, 0x7f0b0921

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    add-int/lit8 v6, v1, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 153
    new-instance v4, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu$3;

    invoke-direct {v4, p0, v0}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu$3;-><init>(Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;I)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v4, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    .end local v0    # "current":I
    .end local v2    # "point":Landroid/widget/ImageView;
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 164
    iget-object v4, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f0200c9

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 168
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 169
    iget-object v4, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setCurrentItem(I)V

    .line 172
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->guideView:Landroid/view/View;

    return-object v4
.end method

.method private dismissAllDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 329
    iget-object v0, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 331
    iput-object v1, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 328
    :cond_0
    return-void
.end method

.method private showTalkBackDisableDialog()V
    .locals 9

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->dismissAllDialog()V

    .line 273
    const-string/jumbo v5, ""

    .line 275
    .local v5, "message":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v7, "com.samsung.android.app.talkback"

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 276
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u2022 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0b0245

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 279
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v7, "com.google.android.marvin.talkback"

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 280
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u2022 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0b0244

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 282
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u2022 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0b1603

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 283
    sget-object v6, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->mActivity:Landroid/app/Activity;

    const-string/jumbo v7, "com.sec.feature.overlaymagnifier"

    invoke-static {v6, v7}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 284
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n\u2022 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0b022d

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 287
    :cond_2
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x1030132

    invoke-direct {v0, v6, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 288
    .local v0, "ct":Landroid/view/ContextThemeWrapper;
    const-string/jumbo v6, "layout_inflater"

    invoke-virtual {v0, v6}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 289
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f04001b

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 290
    .local v3, "dialogView":Landroid/view/ViewGroup;
    const v6, 0x7f11010d

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 291
    .local v2, "descText":Landroid/widget/TextView;
    const v6, 0x7f11010e

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 292
    .local v1, "descList":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0b0923

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    new-instance v6, Landroid/app/AlertDialog$Builder;

    sget-object v7, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->mActivity:Landroid/app/Activity;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 297
    new-instance v7, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu$4;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu$4;-><init>(Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;)V

    const v8, 0x7f0b0c1a

    .line 295
    invoke-virtual {v6, v8, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 313
    new-instance v7, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu$5;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu$5;-><init>(Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;)V

    const/high16 v8, 0x1040000

    .line 295
    invoke-virtual {v6, v8, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 318
    iget-object v6, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 319
    iget-object v6, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    new-instance v7, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu$6;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu$6;-><init>(Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 270
    return-void
.end method


# virtual methods
.method public changeColor(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 176
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0200c8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0200c9

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 175
    return-void
.end method

.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100179

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 116
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 117
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 118
    iget-object v1, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 114
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 185
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 186
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 187
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->createAirViewSetting(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 183
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 107
    const-string/jumbo v0, "PenAirViewSettings"

    const-string/jumbo v1, "onCreate() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 109
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->mActivity:Landroid/app/Activity;

    .line 110
    sget-object v0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->mContext:Landroid/content/Context;

    .line 106
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->createAirViewSetting(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 221
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroyView()V

    .line 219
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 226
    const-string/jumbo v0, "PenAirViewSettings"

    const-string/jumbo v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 228
    iget-object v0, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 229
    iget-object v0, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 230
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->mAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 225
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 192
    const-string/jumbo v2, "PenAirViewSettings"

    const-string/jumbo v3, "onResume() "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 195
    sget-object v2, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 196
    const-string/jumbo v3, "pen_hovering"

    .line 195
    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_1

    .line 196
    const/4 v0, 0x1

    .line 197
    .local v0, "airViewState":Z
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 198
    iget-object v2, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 200
    sget-object v2, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->mActivity:Landroid/app/Activity;

    const-string/jumbo v3, "content://com.sec.knox.provider2/KioskMode"

    .line 201
    const-string/jumbo v4, "isAirViewModeAllowed"

    .line 200
    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 203
    .local v1, "sAirViewModeAllowed":I
    if-nez v1, :cond_0

    .line 204
    iget-object v2, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v5}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 207
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 208
    const-string/jumbo v3, "pen_hovering"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 209
    iget-object v4, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->mAirViewObserver:Landroid/database/ContentObserver;

    .line 208
    const/4 v5, 0x1

    .line 207
    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 191
    return-void

    .line 196
    .end local v0    # "airViewState":Z
    .end local v1    # "sAirViewModeAllowed":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "airViewState":Z
    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 214
    const-string/jumbo v0, "PenAirViewSettings"

    const-string/jumbo v1, "onStrop() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onStop()V

    .line 213
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 6
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 236
    iget-object v3, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v3

    if-eq p1, v3, :cond_0

    .line 237
    return-void

    .line 239
    :cond_0
    if-eqz p2, :cond_7

    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, "hoverZoom":Z
    const/4 v1, 0x0

    .line 242
    .local v1, "magnifier":Z
    sget-object v3, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->mActivity:Landroid/app/Activity;

    const-string/jumbo v4, "com.sec.feature.overlaymagnifier"

    invoke-static {v3, v4}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 243
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "accessibility_magnifier"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_4

    const/4 v0, 0x1

    .line 244
    :goto_0
    sget-object v3, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "finger_magnifier"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_5

    const/4 v1, 0x1

    .line 246
    :cond_1
    :goto_1
    sget-object v3, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 247
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "accessibility_display_magnification_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_6

    .line 250
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->showTalkBackDisableDialog()V

    .line 268
    .end local v0    # "hoverZoom":Z
    .end local v1    # "magnifier":Z
    :goto_2
    iget-object v3, p0, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f10017a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    if-eqz p2, :cond_3

    const/16 v2, 0x3e8

    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 235
    return-void

    .line 243
    .restart local v0    # "hoverZoom":Z
    .restart local v1    # "magnifier":Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 244
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 246
    :cond_6
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 252
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "pen_hovering"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 254
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "pen_hovering_information_preview"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 255
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "pen_hovering_icon_label"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 256
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "pen_hovering_list_scroll"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 257
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "pen_hovering_link_preview"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 261
    .end local v0    # "hoverZoom":Z
    .end local v1    # "magnifier":Z
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "pen_hovering"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 263
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "pen_hovering_information_preview"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 264
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "pen_hovering_icon_label"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 265
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "pen_hovering_list_scroll"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 266
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "pen_hovering_link_preview"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2
.end method
