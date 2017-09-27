.class final Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;
.super Ljava/lang/Object;
.source "BatteryTile.java"

# interfaces
.implements Lcom/android/systemui/qs/QSTile$DetailAdapter;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/BatteryTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BatteryDetail"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail$1;
    }
.end annotation


# instance fields
.field private mCurrentView:Landroid/view/View;

.field private final mDrawable:Lcom/android/systemui/BatteryMeterDrawable;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/BatteryTile;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->mCurrentView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;Lcom/android/settingslib/BatteryInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/android/settingslib/BatteryInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->bindBatteryInfo(Lcom/android/settingslib/BatteryInfo;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->bindView()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->postBindView()V

    return-void
.end method

.method private constructor <init>(Lcom/android/systemui/qs/tiles/BatteryTile;)V
    .locals 5
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/BatteryTile;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->this$0:Lcom/android/systemui/qs/tiles/BatteryTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    new-instance v0, Lcom/android/systemui/BatteryMeterDrawable;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->this$0:Lcom/android/systemui/qs/tiles/BatteryTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/BatteryTile;->-get4(Lcom/android/systemui/qs/tiles/BatteryTile;)Lcom/android/systemui/qs/QSTile$Host;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/qs/QSTile$Host;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 176
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->this$0:Lcom/android/systemui/qs/tiles/BatteryTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/BatteryTile;->-get4(Lcom/android/systemui/qs/tiles/BatteryTile;)Lcom/android/systemui/qs/QSTile$Host;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/qs/QSTile$Host;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b0093

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    .line 175
    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/BatteryMeterDrawable;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->mDrawable:Lcom/android/systemui/BatteryMeterDrawable;

    .line 308
    new-instance v0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail$1;-><init>(Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 173
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/BatteryTile;Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/BatteryTile;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;-><init>(Lcom/android/systemui/qs/tiles/BatteryTile;)V

    return-void
.end method

.method private bindBatteryInfo(Lcom/android/settingslib/BatteryInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/android/settingslib/BatteryInfo;

    .prologue
    .line 251
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 252
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    iget-object v1, p1, Lcom/android/settingslib/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const v3, 0x40266666    # 2.6f

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 253
    const/16 v3, 0x11

    .line 252
    invoke-virtual {v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    .line 254
    iget-object v1, p1, Lcom/android/settingslib/BatteryInfo;->remainingLabel:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 255
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->this$0:Lcom/android/systemui/qs/tiles/BatteryTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/BatteryTile;->-get2(Lcom/android/systemui/qs/tiles/BatteryTile;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 256
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 260
    :goto_0
    iget-object v1, p1, Lcom/android/settingslib/BatteryInfo;->remainingLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 262
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->mCurrentView:Landroid/view/View;

    const v2, 0x7f1300c6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->mCurrentView:Landroid/view/View;

    const v2, 0x7f1300c7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/graph/UsageView;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/android/settingslib/BatteryInfo$BatteryDataParser;

    invoke-virtual {p1, v1, v2}, Lcom/android/settingslib/BatteryInfo;->bindHistory(Lcom/android/settingslib/graph/UsageView;[Lcom/android/settingslib/BatteryInfo$BatteryDataParser;)V

    .line 250
    return-void

    .line 258
    :cond_1
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_0
.end method

.method private bindView()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const v13, 0x1020017

    const v12, 0x7f1300c8

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 212
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->mCurrentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 213
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->mDrawable:Lcom/android/systemui/BatteryMeterDrawable;

    const/16 v1, 0x64

    move v3, v2

    move v5, v4

    move v6, v4

    move v7, v2

    move v8, v2

    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/BatteryMeterDrawable;->onBatteryLevelChanged(IZZIIIIZ)V

    .line 216
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->mDrawable:Lcom/android/systemui/BatteryMeterDrawable;

    invoke-virtual {v0, v4}, Lcom/android/systemui/BatteryMeterDrawable;->onPowerSaveChanged(Z)V

    .line 217
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->mDrawable:Lcom/android/systemui/BatteryMeterDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/BatteryMeterDrawable;->disableShowPercent()V

    .line 218
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->mCurrentView:Landroid/view/View;

    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->mDrawable:Lcom/android/systemui/BatteryMeterDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 219
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Checkable;

    .line 220
    .local v11, "checkbox":Landroid/widget/Checkable;
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->this$0:Lcom/android/systemui/qs/tiles/BatteryTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BatteryTile;->-get7(Lcom/android/systemui/qs/tiles/BatteryTile;)Z

    move-result v0

    invoke-interface {v11, v0}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 221
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->this$0:Lcom/android/systemui/qs/tiles/BatteryTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BatteryTile;->-get2(Lcom/android/systemui/qs/tiles/BatteryTile;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail$3;-><init>(Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;)V

    invoke-static {v0, v1}, Lcom/android/settingslib/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Lcom/android/settingslib/BatteryInfo$Callback;)V

    .line 230
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->mCurrentView:Landroid/view/View;

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 232
    .local v10, "batterySaverTitle":Landroid/widget/TextView;
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->mCurrentView:Landroid/view/View;

    const v1, 0x1020010

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 233
    .local v9, "batterySaverSummary":Landroid/widget/TextView;
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->this$0:Lcom/android/systemui/qs/tiles/BatteryTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BatteryTile;->-get1(Lcom/android/systemui/qs/tiles/BatteryTile;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x3f333333    # 0.7f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 235
    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {v10, v14, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 236
    const v0, 0x7f0f0549

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(I)V

    .line 237
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 211
    :goto_0
    return-void

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 241
    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {v10, v14, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 242
    const v0, 0x7f0f054a

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(I)V

    .line 243
    const v0, 0x7f0f054b

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(I)V

    .line 244
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setClickable(Z)V

    .line 246
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private postBindView()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->mCurrentView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->mCurrentView:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail$2;-><init>(Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 201
    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 191
    if-nez p2, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->this$0:Lcom/android/systemui/qs/tiles/BatteryTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BatteryTile;->-get2(Lcom/android/systemui/qs/tiles/BatteryTile;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04001f

    .line 193
    const/4 v2, 0x0

    .line 192
    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 195
    :cond_0
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->mCurrentView:Landroid/view/View;

    .line 196
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 197
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->bindView()V

    .line 198
    return-object p2
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 285
    const/16 v0, 0x112

    return v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 274
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->this$0:Lcom/android/systemui/qs/tiles/BatteryTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BatteryTile;->-get2(Lcom/android/systemui/qs/tiles/BatteryTile;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->this$0:Lcom/android/systemui/qs/tiles/BatteryTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/BatteryTile;->-get5(Lcom/android/systemui/qs/tiles/BatteryTile;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f0f0548

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->this$0:Lcom/android/systemui/qs/tiles/BatteryTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BatteryTile;->-get0(Lcom/android/systemui/qs/tiles/BatteryTile;)Lcom/android/systemui/statusbar/policy/BatteryController;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->this$0:Lcom/android/systemui/qs/tiles/BatteryTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BatteryTile;->-get7(Lcom/android/systemui/qs/tiles/BatteryTile;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->setPowerSaveMode(Z)V

    .line 268
    return-void

    .line 269
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->this$0:Lcom/android/systemui/qs/tiles/BatteryTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BatteryTile;->-get3(Lcom/android/systemui/qs/tiles/BatteryTile;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->this$0:Lcom/android/systemui/qs/tiles/BatteryTile;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/BatteryTile;->-set0(Lcom/android/systemui/qs/tiles/BatteryTile;Z)Z

    .line 289
    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->this$0:Lcom/android/systemui/qs/tiles/BatteryTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BatteryTile;->-get3(Lcom/android/systemui/qs/tiles/BatteryTile;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->this$0:Lcom/android/systemui/qs/tiles/BatteryTile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/BatteryTile;->-set0(Lcom/android/systemui/qs/tiles/BatteryTile;Z)Z

    .line 304
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BatteryTile$BatteryDetail;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 301
    :cond_0
    return-void
.end method

.method public setToggleState(Z)Z
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 280
    return p1
.end method
