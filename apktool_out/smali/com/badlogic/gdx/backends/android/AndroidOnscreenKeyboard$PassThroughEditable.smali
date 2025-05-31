.class public Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$PassThroughEditable;
.super Ljava/lang/Object;
.source "AndroidOnscreenKeyboard.java"

# interfaces
.implements Landroid/text/Editable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PassThroughEditable"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public append(C)Landroid/text/Editable;
    .locals 3
    .param p1, "text"    # C

    .prologue
    .line 242
    const-string v0, "Editable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "append: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Landroid/text/Editable;
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 236
    const-string v0, "Editable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "append: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Landroid/text/Editable;
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 248
    const-string v0, "Editable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "append: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1
    .param p1, "x0"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$PassThroughEditable;->append(C)Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$PassThroughEditable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard$PassThroughEditable;->append(Ljava/lang/CharSequence;II)Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public charAt(I)C
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 173
    const-string v0, "Editable"

    const-string v1, "charAt"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 254
    const-string v0, "Editable"

    const-string v1, "clear"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return-void
.end method

.method public clearSpans()V
    .locals 2

    .prologue
    .line 259
    const-string v0, "Editable"

    const-string v1, "clearSpanes"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return-void
.end method

.method public delete(II)Landroid/text/Editable;
    .locals 3
    .param p1, "st"    # I
    .param p2, "en"    # I

    .prologue
    .line 264
    const-string v0, "Editable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-object p0
.end method

.method public getChars(II[CI)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dest"    # [C
    .param p4, "destoff"    # I

    .prologue
    .line 191
    const-string v0, "Editable"

    const-string v1, "getChars"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-void
.end method

.method public getFilters()[Landroid/text/InputFilter;
    .locals 2

    .prologue
    .line 270
    const-string v0, "Editable"

    const-string v1, "getFilters"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/text/InputFilter;

    return-object v0
.end method

.method public getSpanEnd(Ljava/lang/Object;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 206
    const-string v0, "Editable"

    const-string v1, "getSpanEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public getSpanFlags(Ljava/lang/Object;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 212
    const-string v0, "Editable"

    const-string v1, "getSpanFlags"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public getSpanStart(Ljava/lang/Object;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 218
    const-string v0, "Editable"

    const-string v1, "getSpanStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method public getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 2
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 224
    .local p3, "arg2":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-string v0, "Editable"

    const-string v1, "getSpans"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(ILjava/lang/CharSequence;)Landroid/text/Editable;
    .locals 3
    .param p1, "where"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 276
    const-string v0, "Editable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return-object p0
.end method

.method public insert(ILjava/lang/CharSequence;II)Landroid/text/Editable;
    .locals 3
    .param p1, "where"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    .line 282
    const-string v0, "Editable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return-object p0
.end method

.method public length()I
    .locals 2

    .prologue
    .line 179
    const-string v0, "Editable"

    const-string v1, "length"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public nextSpanTransition(IILjava/lang/Class;)I
    .locals 2
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "type"    # Ljava/lang/Class;

    .prologue
    .line 230
    const-string v0, "Editable"

    const-string v1, "nextSpanTransition"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method public removeSpan(Ljava/lang/Object;)V
    .locals 2
    .param p1, "what"    # Ljava/lang/Object;

    .prologue
    .line 196
    const-string v0, "Editable"

    const-string v1, "removeSpan"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return-void
.end method

.method public replace(IILjava/lang/CharSequence;)Landroid/text/Editable;
    .locals 3
    .param p1, "st"    # I
    .param p2, "en"    # I
    .param p3, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 288
    const-string v0, "Editable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "replace: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return-object p0
.end method

.method public replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;
    .locals 3
    .param p1, "st"    # I
    .param p2, "en"    # I
    .param p3, "source"    # Ljava/lang/CharSequence;
    .param p4, "start"    # I
    .param p5, "end"    # I

    .prologue
    .line 294
    const-string v0, "Editable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "replace: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    return-object p0
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 2
    .param p1, "filters"    # [Landroid/text/InputFilter;

    .prologue
    .line 300
    const-string v0, "Editable"

    const-string v1, "setFilters"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    return-void
.end method

.method public setSpan(Ljava/lang/Object;III)V
    .locals 2
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "flags"    # I

    .prologue
    .line 201
    const-string v0, "Editable"

    const-string v1, "setSpan"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 185
    const-string v0, "Editable"

    const-string v1, "subSequence"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v0, 0x0

    return-object v0
.end method
