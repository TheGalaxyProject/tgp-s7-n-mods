.class public Lcom/android/settings/SharedPreferencesLogger$EditorLogger;
.super Ljava/lang/Object;
.source "SharedPreferencesLogger.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SharedPreferencesLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EditorLogger"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SharedPreferencesLogger;


# direct methods
.method public constructor <init>(Lcom/android/settings/SharedPreferencesLogger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/SharedPreferencesLogger;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/settings/SharedPreferencesLogger$EditorLogger;->this$0:Lcom/android/settings/SharedPreferencesLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 0

    .prologue
    .line 189
    return-void
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .locals 0

    .prologue
    .line 180
    return-object p0
.end method

.method public commit()Z
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x1

    return v0
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/settings/SharedPreferencesLogger$EditorLogger;->this$0:Lcom/android/settings/SharedPreferencesLogger;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/settings/SharedPreferencesLogger;->-wrap1(Lcom/android/settings/SharedPreferencesLogger;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-object p0
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/settings/SharedPreferencesLogger$EditorLogger;->this$0:Lcom/android/settings/SharedPreferencesLogger;

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/settings/SharedPreferencesLogger;->-wrap1(Lcom/android/settings/SharedPreferencesLogger;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-object p0
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/settings/SharedPreferencesLogger$EditorLogger;->this$0:Lcom/android/settings/SharedPreferencesLogger;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/settings/SharedPreferencesLogger;->-wrap1(Lcom/android/settings/SharedPreferencesLogger;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-object p0
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/settings/SharedPreferencesLogger$EditorLogger;->this$0:Lcom/android/settings/SharedPreferencesLogger;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/settings/SharedPreferencesLogger;->-wrap1(Lcom/android/settings/SharedPreferencesLogger;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/settings/SharedPreferencesLogger$EditorLogger;->this$0:Lcom/android/settings/SharedPreferencesLogger;

    invoke-static {v0, p1, p2}, Lcom/android/settings/SharedPreferencesLogger;->-wrap2(Lcom/android/settings/SharedPreferencesLogger;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-object p0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    .prologue
    .line 145
    .local p2, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/settings/SharedPreferencesLogger$EditorLogger;->this$0:Lcom/android/settings/SharedPreferencesLogger;

    const-string/jumbo v1, ","

    invoke-static {v1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/settings/SharedPreferencesLogger;->-wrap2(Lcom/android/settings/SharedPreferencesLogger;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-object p0
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 175
    return-object p0
.end method
