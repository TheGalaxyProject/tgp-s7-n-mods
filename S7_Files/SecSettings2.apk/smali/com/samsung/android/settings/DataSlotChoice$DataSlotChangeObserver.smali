.class Lcom/samsung/android/settings/DataSlotChoice$DataSlotChangeObserver;
.super Landroid/database/ContentObserver;
.source "DataSlotChoice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/DataSlotChoice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataSlotChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/DataSlotChoice;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/DataSlotChoice;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/settings/DataSlotChoice;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/samsung/android/settings/DataSlotChoice$DataSlotChangeObserver;->this$0:Lcom/samsung/android/settings/DataSlotChoice;

    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 119
    const-string/jumbo v0, " DataSlotChangeObserver."

    invoke-static {v0}, Lcom/samsung/android/settings/DataSlotChoice;->-wrap1(Ljava/lang/String;)V

    .line 117
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 124
    const-string/jumbo v0, " DataSlotChangeObserver -onChange"

    invoke-static {v0}, Lcom/samsung/android/settings/DataSlotChoice;->-wrap1(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/samsung/android/settings/DataSlotChoice$DataSlotChangeObserver;->this$0:Lcom/samsung/android/settings/DataSlotChoice;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/DataSlotChoice;->-set2(Lcom/samsung/android/settings/DataSlotChoice;Z)Z

    .line 126
    const-string/jumbo v0, "DataSlotChoice"

    const-string/jumbo v1, "Send message UPDATE_UI"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/samsung/android/settings/DataSlotChoice$DataSlotChangeObserver;->this$0:Lcom/samsung/android/settings/DataSlotChoice;

    invoke-static {v0}, Lcom/samsung/android/settings/DataSlotChoice;->-get3(Lcom/samsung/android/settings/DataSlotChoice;)Lcom/samsung/android/settings/DataSlotChoice$SwitchHandler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/DataSlotChoice$SwitchHandler;->sendEmptyMessage(I)Z

    .line 123
    return-void
.end method
