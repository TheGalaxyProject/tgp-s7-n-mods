.class final Lcom/android/systemui/qs/tiles/UDSTile$UDSModeDetailAdapter;
.super Ljava/lang/Object;
.source "UDSTile.java"

# interfaces
.implements Lcom/android/systemui/qs/QSTile$DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/UDSTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UDSModeDetailAdapter"
.end annotation


# instance fields
.field private mSummary1:Landroid/widget/TextView;

.field private mSummary2:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/UDSTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/UDSTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/UDSTile;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/UDSTile$UDSModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UDSTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/UDSTile;Lcom/android/systemui/qs/tiles/UDSTile$UDSModeDetailAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/UDSTile;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/UDSTile$UDSModeDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/UDSTile;)V

    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UDSTile$UDSModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UDSTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/UDSTile;->-get1(Lcom/android/systemui/qs/tiles/UDSTile;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400fb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 284
    const v0, 0x7f1302da

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/UDSTile$UDSModeDetailAdapter;->mSummary1:Landroid/widget/TextView;

    .line 285
    const v0, 0x7f1302ad

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/UDSTile$UDSModeDetailAdapter;->mSummary2:Landroid/widget/TextView;

    .line 286
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UDSTile$UDSModeDetailAdapter;->mSummary1:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u2022 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UDSTile$UDSModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UDSTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/UDSTile;->-get1(Lcom/android/systemui/qs/tiles/UDSTile;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f03c3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UDSTile$UDSModeDetailAdapter;->mSummary2:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u2022 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/UDSTile$UDSModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UDSTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/UDSTile;->-get1(Lcom/android/systemui/qs/tiles/UDSTile;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f03c4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    return-object p2
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 304
    const/16 v0, 0x70

    return v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UDSTile$UDSModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UDSTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/UDSTile;->getLongClickIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UDSTile$UDSModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UDSTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/UDSTile;->-get1(Lcom/android/systemui/qs/tiles/UDSTile;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f03c5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UDSTile$UDSModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UDSTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/UDSTile;->-get2(Lcom/android/systemui/qs/tiles/UDSTile;)Lcom/android/systemui/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public setToggleState(Z)Z
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UDSTile$UDSModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/UDSTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/UDSTile;->handleClick()V

    .line 299
    return p1
.end method
