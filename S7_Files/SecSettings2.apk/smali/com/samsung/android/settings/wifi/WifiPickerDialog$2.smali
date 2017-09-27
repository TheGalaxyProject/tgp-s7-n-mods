.class Lcom/samsung/android/settings/wifi/WifiPickerDialog$2;
.super Ljava/lang/Object;
.source "WifiPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiPickerDialog;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiPickerDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiPickerDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/wifi/WifiPickerDialog;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog$2;->this$0:Lcom/samsung/android/settings/wifi/WifiPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog$2;->this$0:Lcom/samsung/android/settings/wifi/WifiPickerDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->finish()V

    .line 165
    return-void
.end method
