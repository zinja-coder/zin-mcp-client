.class public Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;
.source "TextArea.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;
    }
.end annotation


# instance fields
.field cursorLine:I

.field firstLineShowing:I

.field private lastText:Ljava/lang/String;

.field linesBreak:Lcom/badlogic/gdx/utils/IntArray;

.field private linesShowing:I

.field moveOffset:F

.field private prefRows:F


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "skin"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "skin"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    .param p3, "styleName"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V

    .line 62
    return-void
.end method

.method private calculateCurrentLineIndex(I)I
    .locals 2
    .param p1, "cursor"    # I

    .prologue
    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aget v1, v1, v0

    if-le p1, v1, :cond_0

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    :cond_0
    return v0
.end method


# virtual methods
.method protected calculateOffsets()V
    .locals 10

    .prologue
    .line 262
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->calculateOffsets()V

    .line 263
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->lastText:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 264
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    iput-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->lastText:Ljava/lang/String;

    .line 265
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;-><init>()V

    .line 266
    .local v0, "bounds":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v1, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 267
    .local v1, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->getWidth()F

    move-result v8

    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v7, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v7, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v7

    iget-object v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v9, v9, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v9

    add-float/2addr v7, v9

    :goto_0
    sub-float v6, v8, v7

    .line 269
    .local v6, "maxWidthLine":F
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/IntArray;->clear()V

    .line 270
    const/4 v5, 0x0

    .line 271
    .local v5, "lineStart":I
    const/4 v4, 0x0

    .line 273
    .local v4, "lastSpace":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v2, v7, :cond_6

    .line 274
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 275
    .local v3, "lastCharacter":C
    const/16 v7, 0xd

    if-eq v3, v7, :cond_0

    const/16 v7, 0xa

    if-ne v3, v7, :cond_3

    .line 276
    :cond_0
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v7, v5}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 277
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v7, v2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 278
    add-int/lit8 v5, v2, 0x1

    .line 273
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 267
    .end local v2    # "i":I
    .end local v3    # "lastCharacter":C
    .end local v4    # "lastSpace":I
    .end local v5    # "lineStart":I
    .end local v6    # "maxWidthLine":F
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 280
    .restart local v2    # "i":I
    .restart local v3    # "lastCharacter":C
    .restart local v4    # "lastSpace":I
    .restart local v5    # "lineStart":I
    .restart local v6    # "maxWidthLine":F
    :cond_3
    const/4 v7, 0x0

    invoke-virtual {p0, v2, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->continueCursor(II)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 281
    :goto_3
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v1, v7, v5, v8, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getBounds(Ljava/lang/CharSequence;IILcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    .line 282
    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    cmpl-float v7, v7, v6

    if-lez v7, :cond_1

    .line 283
    if-lt v5, v4, :cond_4

    .line 284
    add-int/lit8 v4, v2, -0x1

    .line 286
    :cond_4
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v7, v5}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 287
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 288
    add-int/lit8 v5, v4, 0x1

    .line 289
    move v4, v5

    goto :goto_2

    :cond_5
    move v4, v2

    .line 280
    goto :goto_3

    .line 294
    .end local v3    # "lastCharacter":C
    :cond_6
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_7

    .line 295
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v7, v5}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 296
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 298
    :cond_7
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->showCursor()V

    .line 300
    .end local v0    # "bounds":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .end local v1    # "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .end local v2    # "i":I
    .end local v4    # "lastSpace":I
    .end local v5    # "lineStart":I
    .end local v6    # "maxWidthLine":F
    :cond_8
    return-void
.end method

.method protected continueCursor(II)Z
    .locals 4
    .param p1, "index"    # I
    .param p2, "offset"    # I

    .prologue
    .line 332
    add-int v1, p1, p2

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->calculateCurrentLineIndex(I)I

    move-result v0

    .line 333
    .local v0, "pos":I
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->continueCursor(II)Z

    move-result v1

    if-eqz v1, :cond_1

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v1, v1, -0x2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    add-int/lit8 v3, v0, 0x2

    aget v2, v2, v3

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected createInputListener()Lcom/badlogic/gdx/scenes/scene2d/InputListener;
    .locals 1

    .prologue
    .line 304
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;)V

    return-object v0
.end method

.method protected drawCursor(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;FF)V
    .locals 7
    .param p1, "cursorPatch"    # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .param p2, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p3, "font"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .param p4, "x"    # F
    .param p5, "y"    # F

    .prologue
    .line 253
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v6, 0x0

    .line 255
    .local v6, "textOffset":F
    :goto_0
    add-float v2, p4, v6

    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float v0, p5, v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->firstLineShowing:I

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getLineHeight()F

    move-result v3

    mul-float/2addr v1, v3

    sub-float v3, v0, v1

    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v4

    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getLineHeight()F

    move-result v5

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 258
    return-void

    .line 253
    .end local v6    # "textOffset":F
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    mul-int/lit8 v3, v3, 0x2

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v1

    sub-float v6, v0, v1

    goto :goto_0
.end method

.method protected drawSelection(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;FF)V
    .locals 15
    .param p1, "selection"    # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .param p2, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p3, "font"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .param p4, "x"    # F
    .param p5, "y"    # F

    .prologue
    .line 215
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->firstLineShowing:I

    mul-int/lit8 v7, v0, 0x2

    .line 216
    .local v7, "i":I
    const/4 v12, 0x0

    .line 217
    .local v12, "offsetY":F
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->selectionStart:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 218
    .local v11, "minIndex":I
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->selectionStart:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 219
    .local v10, "maxIndex":I
    :goto_0
    add-int/lit8 v0, v7, 0x1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge v0, v1, :cond_3

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->firstLineShowing:I

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesShowing:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    if-ge v7, v0, :cond_3

    .line 221
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v9

    .line 222
    .local v9, "lineStart":I
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    add-int/lit8 v1, v7, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v8

    .line 224
    .local v8, "lineEnd":I
    if-ge v11, v9, :cond_0

    if-ge v11, v8, :cond_0

    if-ge v10, v9, :cond_0

    if-lt v10, v8, :cond_2

    :cond_0
    if-le v11, v9, :cond_1

    if-le v11, v8, :cond_1

    if-le v10, v9, :cond_1

    if-gt v10, v8, :cond_2

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v0

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 228
    .local v14, "start":I
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    add-int/lit8 v1, v7, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v0

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 230
    .local v6, "end":I
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v0, v14}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v1

    sub-float v13, v0, v1

    .line 231
    .local v13, "selectionX":F
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v1, v14}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v1

    sub-float v4, v0, v1

    .line 233
    .local v4, "selectionWidth":F
    add-float v2, p4, v13

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->textHeight:F

    sub-float v0, p5, v0

    invoke-virtual/range {p3 .. p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result v1

    sub-float/2addr v0, v1

    sub-float v3, v0, v12

    invoke-virtual/range {p3 .. p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getLineHeight()F

    move-result v5

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 237
    .end local v4    # "selectionWidth":F
    .end local v6    # "end":I
    .end local v13    # "selectionX":F
    .end local v14    # "start":I
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getLineHeight()F

    move-result v0

    add-float/2addr v12, v0

    .line 238
    add-int/lit8 v7, v7, 0x2

    .line 239
    goto/16 :goto_0

    .line 240
    .end local v8    # "lineEnd":I
    .end local v9    # "lineStart":I
    :cond_3
    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;FF)V
    .locals 9
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "font"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 244
    const/4 v8, 0x0

    .line 245
    .local v8, "offsetY":F
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->firstLineShowing:I

    mul-int/lit8 v7, v0, 0x2

    .local v7, "i":I
    :goto_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->firstLineShowing:I

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesShowing:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    if-ge v7, v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge v7, v0, :cond_0

    .line 246
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->displayText:Ljava/lang/CharSequence;

    add-float v4, p4, v8

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aget v5, v0, v7

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    add-int/lit8 v1, v7, 0x1

    aget v6, v0, v1

    move-object v0, p2

    move-object v1, p1

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FFII)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    .line 247
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getLineHeight()F

    move-result v0

    sub-float/2addr v8, v0

    .line 245
    add-int/lit8 v7, v7, 0x2

    goto :goto_0

    .line 249
    :cond_0
    return-void
.end method

.method public getCursorLine()I
    .locals 1

    .prologue
    .line 338
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    return v0
.end method

.method public getFirstLineShowing()I
    .locals 1

    .prologue
    .line 342
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->firstLineShowing:I

    return v0
.end method

.method public getLines()I
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    div-int/lit8 v1, v0, 0x2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->newLineAtEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLinesShowing()I
    .locals 1

    .prologue
    .line 346
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesShowing:I

    return v0
.end method

.method public getPrefHeight()F
    .locals 3

    .prologue
    .line 105
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->prefRows:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    .line 106
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getPrefHeight()F

    move-result v0

    .line 113
    :cond_0
    :goto_0
    return v0

    .line 108
    :cond_1
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->textHeight:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->prefRows:F

    mul-float v0, v1, v2

    .line 109
    .local v0, "prefHeight":F
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v1

    add-float/2addr v1, v0

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0
.end method

.method protected getTextY(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)F
    .locals 2
    .param p1, "font"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .param p2, "background"    # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->getHeight()F

    move-result v0

    .line 207
    .local v0, "textY":F
    if-eqz p2, :cond_0

    .line 208
    invoke-interface {p2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v1

    sub-float v1, v0, v1

    float-to-int v1, v1

    int-to-float v0, v1

    .line 210
    :cond_0
    return v0
.end method

.method protected initialize()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->initialize()V

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->writeEnters:Z

    .line 68
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    .line 69
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    .line 70
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->firstLineShowing:I

    .line 71
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->moveOffset:F

    .line 72
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesShowing:I

    .line 73
    return-void
.end method

.method protected letterUnderCursor(F)I
    .locals 7
    .param p1, "x"    # F

    .prologue
    const/4 v4, 0x0

    .line 76
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget v5, v5, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-lez v5, :cond_0

    .line 77
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    mul-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget v6, v6, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-lt v5, v6, :cond_1

    .line 78
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 94
    :cond_0
    :goto_0
    return v4

    .line 80
    :cond_1
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v5, v5, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    mul-int/lit8 v6, v6, 0x2

    aget v3, v5, v6

    .line 81
    .local v3, "start":I
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v5, v5, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    aget v0, v5, v6

    .line 82
    .local v0, "end":I
    move v2, v3

    .line 83
    .local v2, "i":I
    const/4 v1, 0x0

    .line 84
    .local v1, "found":Z
    :goto_1
    if-gt v2, v0, :cond_3

    if-nez v1, :cond_3

    .line 85
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v5, v5, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    aget v5, v5, v2

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v6, v6, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    aget v6, v6, v3

    sub-float/2addr v5, v6

    cmpl-float v5, v5, p1

    if-lez v5, :cond_2

    .line 86
    const/4 v1, 0x1

    goto :goto_1

    .line 88
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 91
    :cond_3
    add-int/lit8 v5, v2, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_0
.end method

.method protected moveCursor(ZZ)V
    .locals 4
    .param p1, "forward"    # Z
    .param p2, "jump"    # Z

    .prologue
    .line 315
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 316
    .local v0, "count":I
    :goto_0
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    mul-int/lit8 v2, v2, 0x2

    add-int v1, v2, v0

    .line 317
    .local v1, "index":I
    if-ltz v1, :cond_2

    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget v3, v3, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge v2, v3, :cond_2

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aget v2, v2, v1

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    add-int/lit8 v3, v1, 0x1

    aget v2, v2, v3

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    if-ne v2, v3, :cond_2

    .line 318
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    .line 319
    if-eqz p2, :cond_0

    .line 320
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->moveCursor(ZZ)V

    .line 322
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->showCursor()V

    .line 326
    :goto_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->updateCurrentLine()V

    .line 328
    return-void

    .line 315
    .end local v0    # "count":I
    .end local v1    # "index":I
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 324
    .restart local v0    # "count":I
    .restart local v1    # "index":I
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->moveCursor(ZZ)V

    goto :goto_1
.end method

.method public moveCursorLine(I)V
    .locals 5
    .param p1, "line"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    .line 130
    if-gez p1, :cond_1

    .line 131
    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    .line 132
    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    .line 133
    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->moveOffset:F

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->getLines()I

    move-result v2

    if-lt p1, v2, :cond_4

    .line 135
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->getLines()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 136
    .local v0, "newLine":I
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    .line 137
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->getLines()I

    move-result v1

    if-gt p1, v1, :cond_2

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    if-ne v0, v1, :cond_3

    .line 138
    :cond_2
    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->moveOffset:F

    .line 140
    :cond_3
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    goto :goto_0

    .line 141
    .end local v0    # "newLine":I
    :cond_4
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    if-eq p1, v2, :cond_0

    .line 142
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->moveOffset:F

    cmpg-float v2, v2, v1

    if-gez v2, :cond_5

    .line 143
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget v2, v2, Lcom/badlogic/gdx/utils/IntArray;->size:I

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    mul-int/lit8 v3, v3, 0x2

    if-gt v2, v3, :cond_6

    :goto_1
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->moveOffset:F

    .line 146
    :cond_5
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    .line 147
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    mul-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget v2, v2, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-lt v1, v2, :cond_7

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_2
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    .line 149
    :goto_3
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_8

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_8

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->moveOffset:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_8

    .line 150
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    goto :goto_3

    .line 143
    :cond_6
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->glyphPositions:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v2

    sub-float/2addr v1, v2

    goto :goto_1

    .line 147
    :cond_7
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v1

    goto :goto_2

    .line 152
    :cond_8
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->showCursor()V

    goto/16 :goto_0
.end method

.method public newLineAtEnd()Z
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPrefRows(F)V
    .locals 0
    .param p1, "prefRows"    # F

    .prologue
    .line 100
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->prefRows:F

    .line 101
    return-void
.end method

.method public setSelection(II)V
    .locals 0
    .param p1, "selectionStart"    # I
    .param p2, "selectionEnd"    # I

    .prologue
    .line 309
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->setSelection(II)V

    .line 310
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->updateCurrentLine()V

    .line 311
    return-void
.end method

.method showCursor()V
    .locals 3

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->updateCurrentLine()V

    .line 174
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->firstLineShowing:I

    if-eq v1, v2, :cond_2

    .line 175
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->firstLineShowing:I

    if-lt v1, v2, :cond_1

    const/4 v0, 0x1

    .line 176
    .local v0, "step":I
    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->firstLineShowing:I

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    if-gt v1, v2, :cond_0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->firstLineShowing:I

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesShowing:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    if-ge v1, v2, :cond_2

    .line 177
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->firstLineShowing:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->firstLineShowing:I

    goto :goto_0

    .line 175
    .end local v0    # "step":I
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 180
    :cond_2
    return-void
.end method

.method protected sizeChanged()V
    .locals 6

    .prologue
    .line 195
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->lastText:Ljava/lang/String;

    .line 198
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v2, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 199
    .local v2, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v1, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 200
    .local v1, "background":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->getHeight()F

    move-result v4

    if-nez v1, :cond_0

    const/4 v3, 0x0

    :goto_0
    sub-float v0, v4, v3

    .line 201
    .local v0, "availableHeight":F
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getLineHeight()F

    move-result v3

    div-float v3, v0, v3

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v3, v4

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesShowing:I

    .line 202
    return-void

    .line 200
    .end local v0    # "availableHeight":F
    :cond_0
    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v3

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v5

    add-float/2addr v3, v5

    goto :goto_0
.end method

.method updateCurrentLine()V
    .locals 4

    .prologue
    .line 158
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    invoke-direct {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->calculateCurrentLineIndex(I)I

    move-result v0

    .line 159
    .local v0, "index":I
    div-int/lit8 v1, v0, 0x2

    .line 162
    .local v1, "line":I
    rem-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget v3, v3, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge v2, v3, :cond_0

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aget v3, v3, v0

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aget v3, v3, v0

    if-eq v2, v3, :cond_2

    .line 164
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget v2, v2, Lcom/badlogic/gdx/utils/IntArray;->size:I

    div-int/lit8 v2, v2, 0x2

    if-lt v1, v2, :cond_1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_2

    .line 166
    :cond_1
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    .line 169
    :cond_2
    return-void
.end method
