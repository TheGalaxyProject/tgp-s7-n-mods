.class Lcom/android/settings/localepicker/LocaleListEditor$8;
.super Ljava/lang/Object;
.source "LocaleListEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/localepicker/LocaleListEditor;->configureDragAndDrop(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/localepicker/LocaleListEditor;


# direct methods
.method constructor <init>(Lcom/android/settings/localepicker/LocaleListEditor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/localepicker/LocaleListEditor;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleListEditor$8;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 294
    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleListEditor$8;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-virtual {v1}, Lcom/android/settings/localepicker/LocaleListEditor;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleListEditor$8;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    const/4 v3, 0x0

    .line 293
    invoke-static {v1, v2, v3}, Lcom/android/internal/app/LocalePickerWithRegion;->createLanguagePicker(Landroid/content/Context;Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;Z)Lcom/android/internal/app/LocalePickerWithRegion;

    move-result-object v0

    .line 295
    .local v0, "selector":Lcom/android/internal/app/LocalePickerWithRegion;
    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleListEditor$8;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-virtual {v1}, Lcom/android/settings/localepicker/LocaleListEditor;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 297
    const/16 v2, 0x1001

    .line 295
    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 298
    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleListEditor$8;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-virtual {v2}, Lcom/android/settings/localepicker/LocaleListEditor;->getId()I

    move-result v2

    .line 295
    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 299
    const-string/jumbo v2, "localeListEditor"

    .line 295
    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 292
    return-void
.end method
