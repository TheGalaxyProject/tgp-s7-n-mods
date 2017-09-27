.class public Lcom/samsung/android/settings/Password;
.super Landroid/app/Activity;
.source "Password.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/text/TextWatcher;


# instance fields
.field private mDigits:Landroid/widget/TextView;

.field private mHeadrText:Landroid/widget/TextView;

.field private mPassword:Ljava/lang/String;

.field private mSubject:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/Password;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/Password;->mDigits:Landroid/widget/TextView;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private keyPressed(I)V
    .locals 3
    .param p1, "keyCode"    # I

    .prologue
    .line 233
    const/16 v1, 0x43

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/Password;->mDigits:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 234
    return-void

    .line 235
    :cond_0
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 236
    .local v0, "event":Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/samsung/android/settings/Password;->mDigits:Landroid/widget/TextView;

    invoke-virtual {v1, p1, v0}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 231
    return-void
.end method

.method private match(Ljava/lang/String;)Z
    .locals 4
    .param p1, "aPassword"    # Ljava/lang/String;

    .prologue
    const v3, 0x7f0b0efe

    const/4 v2, 0x0

    .line 256
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/Password;->reasonable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 258
    const-string/jumbo v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    const-string/jumbo v0, "****"

    iget-object v1, p0, Lcom/samsung/android/settings/Password;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/samsung/android/settings/Password;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0efd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/Password;->showAlert(Ljava/lang/String;)V

    .line 263
    :goto_0
    return v2

    .line 262
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/Password;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/Password;->showAlert(Ljava/lang/String;)V

    goto :goto_0

    .line 266
    :cond_1
    const-string/jumbo v0, "****"

    iget-object v1, p0, Lcom/samsung/android/settings/Password;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/Password;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 270
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 273
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/Password;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/Password;->showAlert(Ljava/lang/String;)V

    .line 274
    return v2

    .line 277
    :cond_4
    return v2
.end method

.method private onPasswordConfirm()V
    .locals 3

    .prologue
    .line 298
    iget-object v2, p0, Lcom/samsung/android/settings/Password;->mDigits:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, "pwd":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/Password;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 300
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 301
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, ".password"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/settings/Password;->setResult(ILandroid/content/Intent;)V

    .line 303
    invoke-virtual {p0}, Lcom/samsung/android/settings/Password;->finish()V

    .line 297
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private reasonable(Ljava/lang/String;)Z
    .locals 4
    .param p1, "aPassword"    # Ljava/lang/String;

    .prologue
    const v3, 0x7f0b0efe

    const/4 v2, 0x0

    .line 309
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    const-string/jumbo v0, "****"

    iget-object v1, p0, Lcom/samsung/android/settings/Password;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {p0}, Lcom/samsung/android/settings/Password;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0eff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/Password;->showAlert(Ljava/lang/String;)V

    .line 314
    :goto_0
    return v2

    .line 313
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/Password;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/Password;->showAlert(Ljava/lang/String;)V

    goto :goto_0

    .line 315
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    .line 316
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_4

    .line 317
    :cond_2
    const-string/jumbo v0, "****"

    iget-object v1, p0, Lcom/samsung/android/settings/Password;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 318
    invoke-virtual {p0}, Lcom/samsung/android/settings/Password;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0f00

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/Password;->showAlert(Ljava/lang/String;)V

    .line 322
    :goto_1
    return v2

    .line 320
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/Password;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/Password;->showAlert(Ljava/lang/String;)V

    goto :goto_1

    .line 324
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method private setupKeypad()V
    .locals 3

    .prologue
    const v2, 0x7f1102c0

    .line 149
    const v1, 0x7f1102c2

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 150
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 152
    const v1, 0x7f1102c3

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    const v1, 0x7f1102c4

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    const v1, 0x7f1102c5

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    const v1, 0x7f1102c6

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    const v1, 0x7f1102c7

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    const v1, 0x7f1102c8

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    const v1, 0x7f1102c9

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    const v1, 0x7f1102ca

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    const v1, 0x7f1102cc

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    const v1, 0x7f11019b

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 164
    const v1, 0x7f1102cb

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 165
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 148
    return-void
.end method

.method private showAlert(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 284
    iget-object v1, p0, Lcom/samsung/android/settings/Password;->mDigits:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 286
    .local v0, "alertDialog":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 287
    invoke-virtual {p0}, Lcom/samsung/android/settings/Password;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b042c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 288
    new-instance v2, Lcom/samsung/android/settings/Password$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/Password$2;-><init>(Lcom/samsung/android/settings/Password;)V

    .line 287
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 293
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 283
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "input"    # Landroid/text/Editable;

    .prologue
    .line 72
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 61
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 241
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 242
    .local v1, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 244
    .local v0, "action":I
    if-ne v0, v3, :cond_0

    .line 245
    const/16 v2, 0x42

    if-ne v1, v2, :cond_0

    .line 246
    invoke-direct {p0}, Lcom/samsung/android/settings/Password;->onPasswordConfirm()V

    .line 247
    return v3

    .line 250
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    return v2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 171
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 227
    return-void

    .line 173
    :sswitch_0
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/Password;->keyPressed(I)V

    .line 174
    return-void

    .line 177
    :sswitch_1
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/Password;->keyPressed(I)V

    .line 178
    return-void

    .line 181
    :sswitch_2
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/Password;->keyPressed(I)V

    .line 182
    return-void

    .line 185
    :sswitch_3
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/Password;->keyPressed(I)V

    .line 186
    return-void

    .line 189
    :sswitch_4
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/Password;->keyPressed(I)V

    .line 190
    return-void

    .line 193
    :sswitch_5
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/Password;->keyPressed(I)V

    .line 194
    return-void

    .line 197
    :sswitch_6
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/Password;->keyPressed(I)V

    .line 198
    return-void

    .line 201
    :sswitch_7
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/Password;->keyPressed(I)V

    .line 202
    return-void

    .line 205
    :sswitch_8
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/Password;->keyPressed(I)V

    .line 206
    return-void

    .line 209
    :sswitch_9
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/Password;->keyPressed(I)V

    .line 210
    return-void

    .line 213
    :sswitch_a
    const/16 v0, 0x43

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/Password;->keyPressed(I)V

    .line 214
    return-void

    .line 218
    :sswitch_b
    invoke-direct {p0}, Lcom/samsung/android/settings/Password;->onPasswordConfirm()V

    .line 219
    return-void

    .line 223
    :sswitch_c
    invoke-virtual {p0}, Lcom/samsung/android/settings/Password;->finish()V

    .line 224
    return-void

    .line 171
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f11019b -> :sswitch_c
        0x7f1102c0 -> :sswitch_a
        0x7f1102c2 -> :sswitch_0
        0x7f1102c3 -> :sswitch_1
        0x7f1102c4 -> :sswitch_2
        0x7f1102c5 -> :sswitch_3
        0x7f1102c6 -> :sswitch_4
        0x7f1102c7 -> :sswitch_5
        0x7f1102c8 -> :sswitch_6
        0x7f1102c9 -> :sswitch_7
        0x7f1102ca -> :sswitch_8
        0x7f1102cb -> :sswitch_9
        0x7f1102cc -> :sswitch_b
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 145
    invoke-virtual {p0}, Lcom/samsung/android/settings/Password;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    .line 143
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const v2, 0x7f0400d1

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/Password;->setContentView(I)V

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/settings/Password;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 85
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 86
    const-string/jumbo v2, ".title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/Password;->mTitle:Ljava/lang/String;

    .line 87
    const-string/jumbo v2, ".subject"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/Password;->mSubject:Ljava/lang/String;

    .line 88
    const-string/jumbo v2, ".password"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/Password;->mPassword:Ljava/lang/String;

    .line 89
    const-string/jumbo v2, "FromOtherSecurity"

    const-string/jumbo v3, ".from"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    iget-object v2, p0, Lcom/samsung/android/settings/Password;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/Password;->setTitle(Ljava/lang/CharSequence;)V

    .line 92
    :cond_0
    const v2, 0x7f1101a5

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/Password;->mHeadrText:Landroid/widget/TextView;

    .line 93
    iget-object v2, p0, Lcom/samsung/android/settings/Password;->mHeadrText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/Password;->mSubject:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    const v2, 0x7f1102bf

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/Password;->mDigits:Landroid/widget/TextView;

    .line 101
    iget-object v2, p0, Lcom/samsung/android/settings/Password;->mDigits:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 102
    iget-object v2, p0, Lcom/samsung/android/settings/Password;->mDigits:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v2, p0, Lcom/samsung/android/settings/Password;->mDigits:Landroid/widget/TextView;

    new-instance v3, Lcom/samsung/android/settings/Password$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/Password$1;-><init>(Lcom/samsung/android/settings/Password;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 121
    iget-object v2, p0, Lcom/samsung/android/settings/Password;->mDigits:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setInputType(I)V

    .line 122
    iget-object v2, p0, Lcom/samsung/android/settings/Password;->mDigits:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 126
    const v2, 0x7f1102c2

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 127
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 128
    invoke-direct {p0}, Lcom/samsung/android/settings/Password;->setupKeypad()V

    .line 76
    :cond_1
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 332
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 338
    return v2

    .line 334
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/Password;->mDigits:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    return v2

    .line 332
    :pswitch_data_0
    .packed-switch 0x7f1102c0
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 138
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 139
    invoke-virtual {p0}, Lcom/samsung/android/settings/Password;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    .line 137
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "input"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "changeCount"    # I

    .prologue
    .line 66
    return-void
.end method
