.class public Lcom/android/systemui/recents/views/AbstractHelpPopup;
.super Ljava/lang/Object;
.source "AbstractHelpPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/AbstractHelpPopup$-void__init__android_content_Context_context_java_lang_String_name_int_numPages_LambdaImpl0;,
        Lcom/android/systemui/recents/views/AbstractHelpPopup$1;,
        Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;
    }
.end annotation


# instance fields
.field protected PAGE_FIRST:I

.field protected PAGE_LAST:I

.field protected final STATE_DO_NOT_SHOW:I

.field private mButton:Landroid/widget/Button;

.field mContents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mHandler:Landroid/os/Handler;

.field private mHelpContentGroup:Landroid/view/ViewGroup;

.field private mHelpDialog:Landroid/app/AlertDialog;

.field private mHelpHubText:Lcom/android/systemui/recents/misc/HelpHubTextView;

.field private mHelpImage:Landroid/widget/ImageView;

.field private mHelpRootView:Landroid/view/ViewGroup;

.field private mPageState:I

.field private mPopupName:Ljava/lang/String;

.field showRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "numPages"    # I

    .prologue
    const/4 v5, -0x1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v5, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->STATE_DO_NOT_SHOW:I

    .line 34
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHandler:Landroid/os/Handler;

    .line 67
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mContents:Ljava/util/ArrayList;

    .line 206
    new-instance v2, Lcom/android/systemui/recents/views/AbstractHelpPopup$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/views/AbstractHelpPopup$1;-><init>(Lcom/android/systemui/recents/views/AbstractHelpPopup;)V

    iput-object v2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->showRunnable:Ljava/lang/Runnable;

    .line 76
    iput-object p1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mPopupName:Ljava/lang/String;

    .line 78
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->PAGE_FIRST:I

    .line 79
    add-int/lit8 v2, p3, -0x1

    iput v2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->PAGE_LAST:I

    .line 81
    iget-object v2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 82
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f04011e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 84
    .local v0, "customView":Landroid/view/View;
    const v2, 0x7f13032b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpRootView:Landroid/view/ViewGroup;

    .line 85
    const v2, 0x7f13032c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpContentGroup:Landroid/view/ViewGroup;

    .line 86
    iget-object v2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpContentGroup:Landroid/view/ViewGroup;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setAccessibilityLiveRegion(I)V

    .line 87
    const v2, 0x7f13032d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpImage:Landroid/widget/ImageView;

    .line 88
    const v2, 0x7f13032e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/misc/HelpHubTextView;

    iput-object v2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpHubText:Lcom/android/systemui/recents/misc/HelpHubTextView;

    .line 89
    const v2, 0x7f13032f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mButton:Landroid/widget/Button;

    .line 90
    iget-object v2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/systemui/recents/views/AbstractHelpPopup$-void__init__android_content_Context_context_java_lang_String_name_int_numPages_LambdaImpl0;

    invoke-direct {v3, p0}, Lcom/android/systemui/recents/views/AbstractHelpPopup$-void__init__android_content_Context_context_java_lang_String_name_int_numPages_LambdaImpl0;-><init>(Lcom/android/systemui/recents/views/AbstractHelpPopup;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mContext:Landroid/content/Context;

    const v4, 0x7f10022b

    invoke-direct {v2, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpDialog:Landroid/app/AlertDialog;

    .line 95
    iget-object v2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->create()V

    .line 96
    iget-object v2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Landroid/view/Window;->setLayout(II)V

    .line 75
    return-void
.end method

.method public static getPersistentState(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "popupName"    # Ljava/lang/String;

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 105
    const-string/jumbo v1, "PREF_KEY_SHOW"

    const/4 v2, 0x1

    .line 104
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private setPage(I)V
    .locals 1
    .param p1, "page"    # I

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->updatePage(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    iput p1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mPageState:I

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->PAGE_LAST:I

    if-le p1, v0, :cond_0

    .line 123
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->setPersistentState(Z)V

    .line 124
    iget-object v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 125
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mPageState:I

    goto :goto_0
.end method

.method private updatePage(I)Z
    .locals 4
    .param p1, "page"    # I

    .prologue
    const/4 v2, 0x0

    .line 137
    iget v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->PAGE_LAST:I

    if-le p1, v1, :cond_0

    return v2

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;

    .line 139
    .local v0, "content":Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->isValidContent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mContext:Landroid/content/Context;

    iget v3, v0, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->imageResId:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 142
    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mContext:Landroid/content/Context;

    iget v3, v0, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->contentDescResId:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpHubText:Lcom/android/systemui/recents/misc/HelpHubTextView;

    iget v2, v0, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->textResId:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/misc/HelpHubTextView;->changeText(I)V

    .line 144
    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpContentGroup:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mContext:Landroid/content/Context;

    iget v3, v0, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->contentDescResId:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mButton:Landroid/widget/Button;

    iget v2, v0, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->btnTextResId:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 147
    const/4 v1, 0x1

    return v1

    .line 139
    :cond_1
    return v2
.end method


# virtual methods
.method synthetic -com_android_systemui_recents_views_AbstractHelpPopup_lambda$1(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 90
    iget v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mPageState:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->setPage(I)V

    .line 0
    return-void
.end method

.method public addContent(IIII)V
    .locals 7
    .param p1, "resIdImage"    # I
    .param p2, "resIdText"    # I
    .param p3, "resIdContentDescription"    # I
    .param p4, "resIdbtnText"    # I

    .prologue
    .line 159
    iget-object v6, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mContents:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;-><init>(Lcom/android/systemui/recents/views/AbstractHelpPopup;IIII)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    return-void
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->showRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 203
    iget-object v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 201
    return-void
.end method

.method public initialize(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "contentSize"    # I

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 152
    iput-object p1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mPopupName:Ljava/lang/String;

    .line 153
    add-int/lit8 v0, p2, -0x1

    iput v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->PAGE_LAST:I

    .line 154
    iget v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->PAGE_FIRST:I

    iput v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mPageState:I

    .line 150
    return-void
.end method

.method protected setPersistentState(Z)V
    .locals 4
    .param p1, "showing"    # Z

    .prologue
    .line 113
    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mPopupName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 114
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "PREF_KEY_SHOW"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 115
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 112
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->showRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 198
    iget-object v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->showRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 196
    return-void
.end method

.method public showInternal()V
    .locals 2

    .prologue
    .line 180
    iget v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mPageState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 181
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x300

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 187
    iget v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->PAGE_FIRST:I

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->setPage(I)V

    .line 189
    iget-object v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 190
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->updateContentsSize()V

    .line 191
    iget-object v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 192
    iget-object v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 179
    :cond_1
    return-void
.end method

.method public updateContentsSize()V
    .locals 4

    .prologue
    .line 164
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 165
    iget-object v2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 166
    .local v1, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 169
    iget-object v2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpRootView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 170
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 171
    iget-object v2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 172
    iget-object v2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpRootView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    return-void
.end method
