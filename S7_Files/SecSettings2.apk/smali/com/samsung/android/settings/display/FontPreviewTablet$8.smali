.class Lcom/samsung/android/settings/display/FontPreviewTablet$8;
.super Ljava/lang/Object;
.source "FontPreviewTablet.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/FontPreviewTablet;->badFontDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/FontPreviewTablet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/display/FontPreviewTablet;

    .prologue
    .line 1304
    iput-object p1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$8;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$8;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->onCancelButtonPressed()V

    .line 1308
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1306
    return-void
.end method
