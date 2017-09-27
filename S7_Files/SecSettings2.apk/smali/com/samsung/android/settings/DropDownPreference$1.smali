.class Lcom/samsung/android/settings/DropDownPreference$1;
.super Ljava/lang/Object;
.source "DropDownPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/DropDownPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/DropDownPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/DropDownPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/DropDownPreference;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/samsung/android/settings/DropDownPreference$1;->this$0:Lcom/samsung/android/settings/DropDownPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-ltz p3, :cond_0

    .line 155
    iget-object v1, p0, Lcom/samsung/android/settings/DropDownPreference$1;->this$0:Lcom/samsung/android/settings/DropDownPreference;

    invoke-virtual {v1}, Lcom/samsung/android/settings/DropDownPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, p3

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/settings/DropDownPreference$1;->this$0:Lcom/samsung/android/settings/DropDownPreference;

    invoke-virtual {v1}, Lcom/samsung/android/settings/DropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/DropDownPreference$1;->this$0:Lcom/samsung/android/settings/DropDownPreference;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/DropDownPreference;->-wrap0(Lcom/samsung/android/settings/DropDownPreference;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/samsung/android/settings/DropDownPreference$1;->this$0:Lcom/samsung/android/settings/DropDownPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 158
    iget-object v1, p0, Lcom/samsung/android/settings/DropDownPreference$1;->this$0:Lcom/samsung/android/settings/DropDownPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/DropDownPreference$1;->this$0:Lcom/samsung/android/settings/DropDownPreference;

    invoke-virtual {v2}, Lcom/samsung/android/settings/DropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, p3

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/DropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 153
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
