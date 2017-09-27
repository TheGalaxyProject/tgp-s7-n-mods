.class public Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;
.super Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;
.source "Selector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xs/identity/Selector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Matcher"
.end annotation


# instance fields
.field protected fElementDepth:I

.field protected final fFieldActivator:Lmf/org/apache/xerces/impl/xs/identity/FieldActivator;

.field protected final fInitialDepth:I

.field protected fMatchedDepth:I

.field final synthetic this$0:Lmf/org/apache/xerces/impl/xs/identity/Selector;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/impl/xs/identity/Selector;Lmf/org/apache/xerces/impl/xs/identity/Selector$XPath;Lmf/org/apache/xerces/impl/xs/identity/FieldActivator;I)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;->this$0:Lmf/org/apache/xerces/impl/xs/identity/Selector;

    .line 189
    invoke-direct {p0, p2}, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;-><init>(Lmf/org/apache/xerces/impl/xpath/XPath;)V

    .line 190
    iput-object p3, p0, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;->fFieldActivator:Lmf/org/apache/xerces/impl/xs/identity/FieldActivator;

    .line 191
    iput p4, p0, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;->fInitialDepth:I

    .line 192
    return-void
.end method


# virtual methods
.method public endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xs/XSTypeDefinition;ZLjava/lang/Object;SLmf/org/apache/xerces/xs/ShortList;)V
    .locals 3

    .prologue
    .line 235
    invoke-super/range {p0 .. p6}, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xs/XSTypeDefinition;ZLjava/lang/Object;SLmf/org/apache/xerces/xs/ShortList;)V

    .line 236
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;->fElementDepth:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;->fElementDepth:I

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;->fMatchedDepth:I

    if-eq v0, v1, :cond_0

    .line 240
    :goto_0
    return-void

    :cond_0
    const/4 v0, -0x1

    .line 237
    iput v0, p0, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;->fMatchedDepth:I

    .line 238
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;->fFieldActivator:Lmf/org/apache/xerces/impl/xs/identity/FieldActivator;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;->this$0:Lmf/org/apache/xerces/impl/xs/identity/Selector;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/identity/Selector;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;->fInitialDepth:I

    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/identity/FieldActivator;->endValueScopeFor(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;I)V

    goto :goto_0
.end method

.method public getIdentityConstraint()Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;->this$0:Lmf/org/apache/xerces/impl/xs/identity/Selector;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/identity/Selector;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    return-object v0
.end method

.method public getInitialDepth()I
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;->fInitialDepth:I

    return v0
.end method

.method public startDocumentFragment()V
    .locals 1

    .prologue
    .line 199
    invoke-super {p0}, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->startDocumentFragment()V

    const/4 v0, 0x0

    .line 200
    iput v0, p0, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;->fElementDepth:I

    const/4 v0, -0x1

    .line 201
    iput v0, p0, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;->fMatchedDepth:I

    .line 202
    return-void
.end method

.method public startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 214
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)V

    .line 215
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;->fElementDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;->fElementDepth:I

    .line 219
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;->isMatched()Z

    move-result v1

    if-nez v1, :cond_1

    .line 232
    :cond_0
    return-void

    .line 222
    :cond_1
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;->fElementDepth:I

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;->fMatchedDepth:I

    .line 223
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;->fFieldActivator:Lmf/org/apache/xerces/impl/xs/identity/FieldActivator;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;->this$0:Lmf/org/apache/xerces/impl/xs/identity/Selector;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/xs/identity/Selector;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;->fInitialDepth:I

    invoke-interface {v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/identity/FieldActivator;->startValueScopeFor(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;I)V

    .line 224
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;->this$0:Lmf/org/apache/xerces/impl/xs/identity/Selector;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/identity/Selector;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getFieldCount()I

    move-result v1

    .line 225
    :goto_0
    if-ge v0, v1, :cond_0

    .line 226
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;->this$0:Lmf/org/apache/xerces/impl/xs/identity/Selector;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/xs/identity/Selector;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getFieldAt(I)Lmf/org/apache/xerces/impl/xs/identity/Field;

    move-result-object v2

    .line 227
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;->fFieldActivator:Lmf/org/apache/xerces/impl/xs/identity/FieldActivator;

    iget v4, p0, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;->fInitialDepth:I

    invoke-interface {v3, v2, v4}, Lmf/org/apache/xerces/impl/xs/identity/FieldActivator;->activateField(Lmf/org/apache/xerces/impl/xs/identity/Field;I)Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;

    move-result-object v2

    .line 228
    invoke-virtual {v2, p1, p2}, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)V

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
