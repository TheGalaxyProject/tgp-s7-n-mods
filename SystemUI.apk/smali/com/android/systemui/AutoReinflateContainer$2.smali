.class Lcom/android/systemui/AutoReinflateContainer$2;
.super Ljava/lang/Object;
.source "AutoReinflateContainer.java"

# interfaces
.implements Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/AutoReinflateContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/AutoReinflateContainer;


# direct methods
.method constructor <init>(Lcom/android/systemui/AutoReinflateContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/AutoReinflateContainer$2;->this$0:Lcom/android/systemui/AutoReinflateContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/net/Uri;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "show_button_background"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/AutoReinflateContainer$2;->this$0:Lcom/android/systemui/AutoReinflateContainer;

    invoke-static {v0}, Lcom/android/systemui/AutoReinflateContainer;->-wrap0(Lcom/android/systemui/AutoReinflateContainer;)V

    :cond_1
    return-void
.end method
