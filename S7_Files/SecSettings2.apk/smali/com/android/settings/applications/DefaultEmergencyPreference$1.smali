.class Lcom/android/settings/applications/DefaultEmergencyPreference$1;
.super Landroid/os/AsyncTask;
.source "DefaultEmergencyPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/DefaultEmergencyPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/Set",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/DefaultEmergencyPreference;


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 87
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/DefaultEmergencyPreference$1;->doInBackground([Ljava/lang/Void;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected doInBackground([Ljava/lang/Void;)Ljava/util/Set;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/applications/DefaultEmergencyPreference$1;->this$0:Lcom/android/settings/applications/DefaultEmergencyPreference;

    invoke-static {v0}, Lcom/android/settings/applications/DefaultEmergencyPreference;->-wrap0(Lcom/android/settings/applications/DefaultEmergencyPreference;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "entries"    # Ljava/lang/Object;

    .prologue
    .line 92
    check-cast p1, Ljava/util/Set;

    .end local p1    # "entries":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/DefaultEmergencyPreference$1;->onPostExecute(Ljava/util/Set;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/settings/applications/DefaultEmergencyPreference$1;->this$0:Lcom/android/settings/applications/DefaultEmergencyPreference;

    invoke-static {v1}, Lcom/android/settings/applications/DefaultEmergencyPreference;->-get0(Lcom/android/settings/applications/DefaultEmergencyPreference;)Landroid/content/ContentResolver;

    move-result-object v1

    .line 94
    const-string/jumbo v2, "emergency_assistance_application"

    .line 93
    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "currentPkg":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/applications/DefaultEmergencyPreference$1;->this$0:Lcom/android/settings/applications/DefaultEmergencyPreference;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v1, v0}, Lcom/android/settings/applications/DefaultEmergencyPreference;->setPackageNames([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 92
    return-void
.end method
