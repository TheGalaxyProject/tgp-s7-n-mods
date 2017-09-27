.class Lcom/samsung/android/settings/GlobalLteRoaming$3;
.super Ljava/lang/Object;
.source "GlobalLteRoaming.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/GlobalLteRoaming;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/GlobalLteRoaming;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/GlobalLteRoaming;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/GlobalLteRoaming;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/samsung/android/settings/GlobalLteRoaming$3;->this$0:Lcom/samsung/android/settings/GlobalLteRoaming;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    move-object v0, p2

    .line 110
    check-cast v0, Ljava/lang/Boolean;

    .line 111
    .local v0, "value":Ljava/lang/Boolean;
    const-string/jumbo v1, "GlobalLteRoaming"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPreferenceChange: LTE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/samsung/android/settings/GlobalLteRoaming$3;->this$0:Lcom/samsung/android/settings/GlobalLteRoaming;

    invoke-static {v1}, Lcom/samsung/android/settings/GlobalLteRoaming;->-wrap1(Lcom/samsung/android/settings/GlobalLteRoaming;)V

    .line 118
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/GlobalLteRoaming$3;->this$0:Lcom/samsung/android/settings/GlobalLteRoaming;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/settings/GlobalLteRoaming;->-wrap2(Lcom/samsung/android/settings/GlobalLteRoaming;Z)V

    goto :goto_0
.end method
