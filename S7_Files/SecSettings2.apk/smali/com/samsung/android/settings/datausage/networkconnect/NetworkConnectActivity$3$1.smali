.class Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3$1;
.super Ljava/lang/Object;
.source "NetworkConnectActivity.java"

# interfaces
.implements Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter$OnItemCheckBoxListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;->onLoadFinished(Landroid/content/Loader;Landroid/net/NetworkStats;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;

    .prologue
    .line 439
    iput-object p1, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3$1;->this$1:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnItemCheckBoxChanged(I)V
    .locals 5
    .param p1, "type"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 442
    if-nez p1, :cond_4

    .line 443
    const/4 v0, 0x0

    .line 444
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 445
    sget-object v2, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->isDataAllowed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 446
    add-int/lit8 v0, v0, 0x1

    .line 444
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 449
    :cond_1
    sget-object v2, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_3

    .line 450
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3$1;->this$1:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;

    iget-object v2, v2, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->-get6(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 451
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3$1;->this$1:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;

    iget-object v2, v2, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;

    invoke-static {v2, v4}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->-set0(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;Z)Z

    .line 441
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_2
    :goto_1
    return-void

    .line 453
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3$1;->this$1:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;

    iget-object v2, v2, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->-get1(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 454
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3$1;->this$1:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;

    iget-object v2, v2, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->-get6(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 455
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3$1;->this$1:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;

    iget-object v2, v2, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;

    invoke-static {v2, v3}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->-set0(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;Z)Z

    goto :goto_1

    .line 458
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_4
    if-ne p1, v4, :cond_2

    .line 459
    const/4 v0, 0x0

    .line 460
    .restart local v0    # "count":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    sget-object v2, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 461
    sget-object v2, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->isWlanAllowed()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 462
    add-int/lit8 v0, v0, 0x1

    .line 460
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 465
    :cond_6
    sget-object v2, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_7

    .line 466
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3$1;->this$1:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;

    iget-object v2, v2, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->-get11(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 467
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3$1;->this$1:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;

    iget-object v2, v2, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;

    invoke-static {v2, v4}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->-set3(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;Z)Z

    goto :goto_1

    .line 469
    :cond_7
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3$1;->this$1:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;

    iget-object v2, v2, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->-get12(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 470
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3$1;->this$1:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;

    iget-object v2, v2, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->-get11(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 471
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3$1;->this$1:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;

    iget-object v2, v2, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;

    invoke-static {v2, v3}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->-set3(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;Z)Z

    goto :goto_1
.end method
