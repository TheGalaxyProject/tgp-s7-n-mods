.class Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "NavBarTuner.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tuner/NavBarTuner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NavBarAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/android/systemui/tuner/NavBarTuner$Holder;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private mButtonLayout:I

.field private mButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbacks:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

.field private mCategoryLayout:I

.field private mKeycode:I

.field private mLabels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

.field final synthetic this$0:Lcom/android/systemui/tuner/NavBarTuner;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->mButtons:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;)Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->mCallbacks:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->mLabels:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;)Landroid/support/v7/widget/helper/ItemTouchHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->mTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->mKeycode:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->onImageSelected(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->showAddDialog(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "button"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->showAddedMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->showKeyDialogs(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/tuner/NavBarTuner;Landroid/content/Context;)V
    .locals 7
    .param p1, "this$0"    # Lcom/android/systemui/tuner/NavBarTuner;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 299
    iput-object p1, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->this$0:Lcom/android/systemui/tuner/NavBarTuner;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 290
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->mButtons:Ljava/util/List;

    .line 291
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->mLabels:Ljava/util/List;

    .line 555
    new-instance v1, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$1;-><init>(Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;)V

    iput-object v1, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->mCallbacks:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    .line 300
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 301
    sget-object v2, Landroid/R$styleable;->Preference:[I

    const v3, 0x101008e

    .line 300
    invoke-virtual {v1, v6, v2, v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 302
    .local v0, "attrs":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->mButtonLayout:I

    .line 303
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 304
    sget-object v2, Landroid/R$styleable;->Preference:[I

    const v3, 0x101008c

    .line 303
    invoke-virtual {v1, v6, v2, v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 305
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->mCategoryLayout:I

    .line 299
    return-void
.end method

.method private bindAdd(Lcom/android/systemui/tuner/NavBarTuner$Holder;)V
    .locals 6
    .param p1, "holder"    # Lcom/android/systemui/tuner/NavBarTuner$Holder;

    .prologue
    const/4 v5, 0x1

    .line 401
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 402
    .local v2, "value":Landroid/util/TypedValue;
    iget-object v3, p1, Lcom/android/systemui/tuner/NavBarTuner$Holder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 403
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x1010435

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 404
    iget-object v3, p1, Lcom/android/systemui/tuner/NavBarTuner$Holder;->itemView:Landroid/view/View;

    const v4, 0x1020006

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 405
    .local v1, "icon":Landroid/widget/ImageView;
    const v3, 0x7f020141

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 406
    iget v3, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 407
    iget-object v3, p1, Lcom/android/systemui/tuner/NavBarTuner$Holder;->itemView:Landroid/view/View;

    const v4, 0x1020010

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 408
    iget-object v3, p1, Lcom/android/systemui/tuner/NavBarTuner$Holder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setClickable(Z)V

    .line 409
    iget-object v3, p1, Lcom/android/systemui/tuner/NavBarTuner$Holder;->itemView:Landroid/view/View;

    new-instance v4, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$2;-><init>(Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    return-void
.end method

.method private bindButton(Lcom/android/systemui/tuner/NavBarTuner$Holder;I)V
    .locals 3
    .param p1, "holder"    # Lcom/android/systemui/tuner/NavBarTuner$Holder;
    .param p2, "position"    # I

    .prologue
    const/16 v2, 0x8

    .line 418
    iget-object v0, p1, Lcom/android/systemui/tuner/NavBarTuner$Holder;->itemView:Landroid/view/View;

    const v1, 0x102003e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 419
    iget-object v0, p1, Lcom/android/systemui/tuner/NavBarTuner$Holder;->itemView:Landroid/view/View;

    const v1, 0x1020010

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 420
    iget-object v0, p1, Lcom/android/systemui/tuner/NavBarTuner$Holder;->itemView:Landroid/view/View;

    const v1, 0x7f130282

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->bindClick(Landroid/view/View;Lcom/android/systemui/tuner/NavBarTuner$Holder;)V

    .line 421
    iget-object v0, p1, Lcom/android/systemui/tuner/NavBarTuner$Holder;->itemView:Landroid/view/View;

    const v1, 0x7f130281

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->bindClick(Landroid/view/View;Lcom/android/systemui/tuner/NavBarTuner$Holder;)V

    .line 422
    iget-object v0, p1, Lcom/android/systemui/tuner/NavBarTuner$Holder;->itemView:Landroid/view/View;

    const v1, 0x7f130283

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$3;-><init>(Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;Lcom/android/systemui/tuner/NavBarTuner$Holder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 417
    return-void
.end method

.method private bindClick(Landroid/view/View;Lcom/android/systemui/tuner/NavBarTuner$Holder;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "holder"    # Lcom/android/systemui/tuner/NavBarTuner$Holder;

    .prologue
    .line 501
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 502
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 500
    return-void
.end method

.method private getLayoutId(I)I
    .locals 1
    .param p1, "viewType"    # I

    .prologue
    .line 384
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 385
    iget v0, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->mCategoryLayout:I

    return v0

    .line 387
    :cond_0
    iget v0, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->mButtonLayout:I

    return v0
.end method

.method private onImageSelected(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 461
    iget-object v1, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->mButtons:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 462
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->mButtons:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "key("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->mKeycode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 463
    const-string/jumbo v3, ")"

    .line 462
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 464
    iget-object v1, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->mLabels:Ljava/util/List;

    const-string/jumbo v2, "key"

    iget-object v3, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->this$0:Lcom/android/systemui/tuner/NavBarTuner;

    invoke-virtual {v3}, Lcom/android/systemui/tuner/NavBarTuner;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/tuner/NavBarTuner;->-wrap0(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 466
    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->notifyItemInserted(I)V

    .line 467
    iget-object v1, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->this$0:Lcom/android/systemui/tuner/NavBarTuner;

    invoke-static {v1}, Lcom/android/systemui/tuner/NavBarTuner;->-wrap1(Lcom/android/systemui/tuner/NavBarTuner;)V

    .line 460
    return-void
.end method

.method private showAddDialog(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 432
    const/4 v3, 0x7

    new-array v2, v3, [Ljava/lang/String;

    .line 433
    const-string/jumbo v3, "back"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "home"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string/jumbo v3, "recent"

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const-string/jumbo v3, "menu_ime"

    const/4 v4, 0x3

    aput-object v3, v2, v4

    const-string/jumbo v3, "space"

    const/4 v4, 0x4

    aput-object v3, v2, v4

    const-string/jumbo v3, "clipboard"

    const/4 v4, 0x5

    aput-object v3, v2, v4

    const-string/jumbo v3, "key"

    const/4 v4, 0x6

    aput-object v3, v2, v4

    .line 435
    .local v2, "options":[Ljava/lang/String;
    array-length v3, v2

    new-array v1, v3, [Ljava/lang/CharSequence;

    .line 436
    .local v1, "labels":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 437
    aget-object v3, v2, v0

    invoke-static {v3, p1}, Lcom/android/systemui/tuner/NavBarTuner;->-wrap0(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v0

    .line 436
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 439
    :cond_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 440
    const v4, 0x7f0f058b

    .line 439
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 441
    new-instance v4, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$4;

    invoke-direct {v4, p0, v2, p1, v1}, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$4;-><init>(Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;[Ljava/lang/String;Landroid/content/Context;[Ljava/lang/CharSequence;)V

    .line 439
    invoke-virtual {v3, v1, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 456
    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    .line 439
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 431
    return-void
.end method

.method private showAddedMessage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "button"    # Ljava/lang/String;

    .prologue
    .line 491
    const-string/jumbo v0, "clipboard"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 493
    const v1, 0x7f0f0591

    .line 492
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 494
    const v1, 0x7f0f0592

    .line 492
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 495
    const v1, 0x104000a

    const/4 v2, 0x0

    .line 492
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 490
    :cond_0
    return-void
.end method

.method private showKeyDialogs(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 472
    new-instance v0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$5;-><init>(Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;)V

    .line 479
    .local v0, "listener":Lcom/android/systemui/tuner/KeycodeSelectionHelper$OnSelectionComplete;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 480
    const v2, 0x7f0f0594

    .line 479
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 481
    const v2, 0x7f0f0595

    .line 479
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 482
    new-instance v2, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$6;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$6;-><init>(Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;Landroid/content/Context;Lcom/android/systemui/tuner/KeycodeSelectionHelper$OnSelectionComplete;)V

    const v3, 0x104000a

    .line 479
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 470
    return-void
.end method

.method private showWidthDialog(Lcom/android/systemui/tuner/NavBarTuner$Holder;Landroid/content/Context;)V
    .locals 7
    .param p1, "holder"    # Lcom/android/systemui/tuner/NavBarTuner$Holder;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 520
    iget-object v4, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->mButtons:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/systemui/tuner/NavBarTuner$Holder;->getAdapterPosition()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 521
    .local v1, "buttonSpec":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->extractSize(Ljava/lang/String;)F

    move-result v0

    .line 522
    .local v0, "amount":F
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 523
    const v5, 0x7f0f0590

    .line 522
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 524
    const v5, 0x7f0400b9

    .line 522
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 525
    const/high16 v5, 0x1040000

    const/4 v6, 0x0

    .line 522
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 527
    .local v2, "dialog":Landroid/app/AlertDialog;
    const v4, 0x104000a

    invoke-virtual {p2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 528
    new-instance v5, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$7;

    invoke-direct {v5, p0, v1, v2, p1}, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$7;-><init>(Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;Ljava/lang/String;Landroid/app/AlertDialog;Lcom/android/systemui/tuner/NavBarTuner$Holder;)V

    .line 526
    const/4 v6, -0x1

    invoke-virtual {v2, v6, v4, v5}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 543
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 544
    const v4, 0x7f130284

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    .line 546
    .local v3, "seekBar":Landroid/widget/SeekBar;
    const/16 v4, 0x96

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 547
    const/high16 v4, 0x3e800000    # 0.25f

    sub-float v4, v0, v4

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 519
    return-void
.end method


# virtual methods
.method public addButton(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "button"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->mButtons:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    iget-object v0, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->mLabels:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    iget-object v0, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->mLabels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->notifyItemInserted(I)V

    .line 322
    iget-object v0, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->this$0:Lcom/android/systemui/tuner/NavBarTuner;

    invoke-static {v0}, Lcom/android/systemui/tuner/NavBarTuner;->-wrap1(Lcom/android/systemui/tuner/NavBarTuner;)V

    .line 318
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->mButtons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 314
    iget-object v0, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->mLabels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 315
    invoke-virtual {p0}, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->notifyDataSetChanged()V

    .line 312
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->mButtons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 361
    iget-object v1, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->mButtons:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 362
    .local v0, "button":Ljava/lang/String;
    const-string/jumbo v1, "start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "center"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "end"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 363
    :cond_0
    const/4 v1, 0x2

    return v1

    .line 365
    :cond_1
    const-string/jumbo v1, "add"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 366
    const/4 v1, 0x0

    return v1

    .line 368
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public getNavString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 337
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->mButtons:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_6

    .line 338
    iget-object v3, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->mButtons:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 339
    .local v1, "button":Ljava/lang/String;
    const-string/jumbo v3, "center"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "end"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 340
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 342
    :cond_1
    const-string/jumbo v3, "space"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    :cond_2
    const-string/jumbo v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 346
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 347
    const-string/jumbo v4, ";"

    .line 346
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 350
    :cond_4
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 348
    :cond_5
    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 352
    .end local v1    # "button":Ljava/lang/String;
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 354
    const-string/jumbo v3, "space"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public hasHomeButton()Z
    .locals 4

    .prologue
    .line 326
    iget-object v2, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->mButtons:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 327
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 328
    iget-object v2, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->mButtons:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "home"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 329
    const/4 v2, 0x1

    return v2

    .line 327
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 332
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 391
    check-cast p1, Lcom/android/systemui/tuner/NavBarTuner$Holder;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->onBindViewHolder(Lcom/android/systemui/tuner/NavBarTuner$Holder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/systemui/tuner/NavBarTuner$Holder;I)V
    .locals 2
    .param p1, "holder"    # Lcom/android/systemui/tuner/NavBarTuner$Holder;
    .param p2, "position"    # I

    .prologue
    .line 392
    invoke-static {p1}, Lcom/android/systemui/tuner/NavBarTuner$Holder;->-get0(Lcom/android/systemui/tuner/NavBarTuner$Holder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->mLabels:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    invoke-virtual {p1}, Lcom/android/systemui/tuner/NavBarTuner$Holder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 394
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->bindButton(Lcom/android/systemui/tuner/NavBarTuner$Holder;I)V

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/tuner/NavBarTuner$Holder;->getItemViewType()I

    move-result v0

    if-nez v0, :cond_0

    .line 396
    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->bindAdd(Lcom/android/systemui/tuner/NavBarTuner$Holder;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 507
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/NavBarTuner$Holder;

    .line 508
    .local v0, "holder":Lcom/android/systemui/tuner/NavBarTuner$Holder;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f130281

    if-ne v2, v3, :cond_1

    .line 509
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->showWidthDialog(Lcom/android/systemui/tuner/NavBarTuner$Holder;Landroid/content/Context;)V

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 510
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f130282

    if-ne v2, v3, :cond_0

    .line 511
    invoke-virtual {v0}, Lcom/android/systemui/tuner/NavBarTuner$Holder;->getAdapterPosition()I

    move-result v1

    .line 512
    .local v1, "position":I
    iget-object v2, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->mButtons:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 513
    iget-object v2, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->mLabels:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 514
    invoke-virtual {p0, v1}, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->notifyItemRemoved(I)V

    .line 515
    iget-object v2, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->this$0:Lcom/android/systemui/tuner/NavBarTuner;

    invoke-static {v2}, Lcom/android/systemui/tuner/NavBarTuner;->-wrap1(Lcom/android/systemui/tuner/NavBarTuner;)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 372
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/tuner/NavBarTuner$Holder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/tuner/NavBarTuner$Holder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 373
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 374
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 375
    .local v1, "inflater":Landroid/view/LayoutInflater;
    invoke-direct {p0, p2}, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->getLayoutId(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 376
    .local v2, "view":Landroid/view/View;
    const/4 v3, 0x1

    if-ne p2, v3, :cond_0

    .line 378
    const v3, 0x1020018

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 377
    const v4, 0x7f0400b7

    invoke-virtual {v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 380
    :cond_0
    new-instance v3, Lcom/android/systemui/tuner/NavBarTuner$Holder;

    invoke-direct {v3, v2}, Lcom/android/systemui/tuner/NavBarTuner$Holder;-><init>(Landroid/view/View;)V

    return-object v3
.end method

.method public setTouchHelper(Landroid/support/v7/widget/helper/ItemTouchHelper;)V
    .locals 0
    .param p1, "itemTouchHelper"    # Landroid/support/v7/widget/helper/ItemTouchHelper;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->mTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    .line 308
    return-void
.end method
