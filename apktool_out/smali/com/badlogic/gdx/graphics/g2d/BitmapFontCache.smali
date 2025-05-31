.class public Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;
.super Ljava/lang/Object;
.source "BitmapFontCache.java"


# instance fields
.field private charsCount:I

.field private color:F

.field private final font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

.field private glyphCount:I

.field private glyphIndices:[Lcom/badlogic/gdx/utils/IntArray;

.field private idx:[I

.field private integer:Z

.field private markup:Lcom/badlogic/gdx/graphics/g2d/TextMarkup;

.field private oldTint:F

.field private final tempColor:Lcom/badlogic/gdx/graphics/Color;

.field private final textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

.field private textChanged:Z

.field private tmpGlyphCount:[I

.field private vertexData:[[F

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;)V
    .locals 1
    .param p1, "font"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .prologue
    .line 62
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->usesIntegerPositions()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Z)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Z)V
    .locals 7
    .param p1, "font"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .param p2, "integer"    # Z

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    sget-object v4, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v4

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->color:F

    .line 45
    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v5, v5, v5, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->tempColor:Lcom/badlogic/gdx/graphics/Color;

    .line 46
    new-instance v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    invoke-direct {v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;-><init>()V

    iput-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    .line 47
    iput-boolean v6, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->integer:Z

    .line 48
    const/4 v4, 0x0

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->glyphCount:I

    .line 55
    const/4 v4, 0x0

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->oldTint:F

    .line 57
    new-instance v4, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;

    invoke-direct {v4}, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;-><init>()V

    iput-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->markup:Lcom/badlogic/gdx/graphics/g2d/TextMarkup;

    .line 67
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 68
    iput-boolean p2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->integer:Z

    .line 70
    iget-object v4, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->regions:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    array-length v2, v4

    .line 71
    .local v2, "regionsLength":I
    if-nez v2, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "The specified font must contain at least one texture page."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 73
    :cond_0
    new-array v4, v2, [[F

    iput-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->vertexData:[[F

    .line 75
    new-array v4, v2, [I

    iput-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:[I

    .line 76
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->vertexData:[[F

    array-length v3, v4

    .line 77
    .local v3, "vertexDataLength":I
    if-le v3, v6, :cond_2

    .line 79
    new-array v4, v3, [Lcom/badlogic/gdx/utils/IntArray;

    iput-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->glyphIndices:[Lcom/badlogic/gdx/utils/IntArray;

    .line 80
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->glyphIndices:[Lcom/badlogic/gdx/utils/IntArray;

    array-length v1, v4

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 81
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->glyphIndices:[Lcom/badlogic/gdx/utils/IntArray;

    new-instance v5, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v5}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    aput-object v5, v4, v0

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_1
    new-array v4, v3, [I

    iput-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->tmpGlyphCount:[I

    .line 86
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_2
    return-void
.end method

.method private addGlyph(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;FFFF)V
    .locals 14
    .param p1, "glyph"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    .line 516
    add-float v9, p2, p4

    .line 517
    .local v9, "x2":F
    add-float v10, p3, p5

    .line 518
    .local v10, "y2":F
    iget v4, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->u:F

    .line 519
    .local v4, "u":F
    iget v5, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->u2:F

    .line 520
    .local v5, "u2":F
    iget v6, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v:F

    .line 521
    .local v6, "v":F
    iget v7, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->v2:F

    .line 523
    .local v7, "v2":F
    iget v3, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->page:I

    .line 525
    .local v3, "page":I
    iget-object v11, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->glyphIndices:[Lcom/badlogic/gdx/utils/IntArray;

    if-eqz v11, :cond_0

    .line 526
    iget-object v11, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->glyphIndices:[Lcom/badlogic/gdx/utils/IntArray;

    aget-object v11, v11, v3

    iget v12, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->glyphCount:I

    add-int/lit8 v13, v12, 0x1

    iput v13, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->glyphCount:I

    invoke-virtual {v11, v12}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 529
    :cond_0
    iget-object v11, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->vertexData:[[F

    aget-object v8, v11, v3

    .line 531
    .local v8, "vertices":[F
    iget-boolean v11, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->integer:Z

    if-eqz v11, :cond_1

    .line 532
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->round(F)I

    move-result v11

    int-to-float v0, v11

    move/from16 p2, v0

    .line 533
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->round(F)I

    move-result v11

    int-to-float v0, v11

    move/from16 p3, v0

    .line 534
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v11

    int-to-float v9, v11

    .line 535
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v11

    int-to-float v10, v11

    .line 538
    :cond_1
    iget-object v11, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:[I

    aget v1, v11, v3

    .line 539
    .local v1, "idx":I
    iget-object v11, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:[I

    aget v12, v11, v3

    add-int/lit8 v12, v12, 0x14

    aput v12, v11, v3

    .line 541
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "idx":I
    .local v2, "idx":I
    aput p2, v8, v1

    .line 542
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "idx":I
    .restart local v1    # "idx":I
    aput p3, v8, v2

    .line 543
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "idx":I
    .restart local v2    # "idx":I
    iget v11, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->color:F

    aput v11, v8, v1

    .line 544
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "idx":I
    .restart local v1    # "idx":I
    aput v4, v8, v2

    .line 545
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "idx":I
    .restart local v2    # "idx":I
    aput v6, v8, v1

    .line 547
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "idx":I
    .restart local v1    # "idx":I
    aput p2, v8, v2

    .line 548
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "idx":I
    .restart local v2    # "idx":I
    aput v10, v8, v1

    .line 549
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "idx":I
    .restart local v1    # "idx":I
    iget v11, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->color:F

    aput v11, v8, v2

    .line 550
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "idx":I
    .restart local v2    # "idx":I
    aput v4, v8, v1

    .line 551
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "idx":I
    .restart local v1    # "idx":I
    aput v7, v8, v2

    .line 553
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "idx":I
    .restart local v2    # "idx":I
    aput v9, v8, v1

    .line 554
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "idx":I
    .restart local v1    # "idx":I
    aput v10, v8, v2

    .line 555
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "idx":I
    .restart local v2    # "idx":I
    iget v11, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->color:F

    aput v11, v8, v1

    .line 556
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "idx":I
    .restart local v1    # "idx":I
    aput v5, v8, v2

    .line 557
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "idx":I
    .restart local v2    # "idx":I
    aput v7, v8, v1

    .line 559
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "idx":I
    .restart local v1    # "idx":I
    aput v9, v8, v2

    .line 560
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "idx":I
    .restart local v2    # "idx":I
    aput p3, v8, v1

    .line 561
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "idx":I
    .restart local v1    # "idx":I
    iget v11, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->color:F

    aput v11, v8, v2

    .line 562
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "idx":I
    .restart local v2    # "idx":I
    aput v5, v8, v1

    .line 563
    aput v6, v8, v2

    .line 565
    iget v11, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->charsCount:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->charsCount:I

    .line 566
    return-void
.end method

.method private addToCache(Ljava/lang/CharSequence;FFII)F
    .locals 18
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "start"    # I
    .param p5, "end"    # I

    .prologue
    .line 409
    move/from16 v17, p2

    .line 410
    .local v17, "startX":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 411
    .local v12, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    const/4 v4, 0x0

    .line 412
    .local v4, "lastGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    iget-object v11, v12, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    .line 413
    .local v11, "data":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;
    move/from16 v0, p4

    move/from16 v1, p5

    if-ge v0, v1, :cond_4

    const/4 v3, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->textChanged:Z

    .line 414
    iget v3, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v5

    if-nez v3, :cond_8

    iget v3, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleY:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v5

    if-nez v3, :cond_8

    move/from16 v16, p4

    .line 415
    .end local p4    # "start":I
    .local v16, "start":I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, p5

    if-ge v0, v1, :cond_1

    .line 416
    add-int/lit8 p4, v16, 0x1

    .end local v16    # "start":I
    .restart local p4    # "start":I
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    .line 417
    .local v9, "ch":C
    const/16 v3, 0x5b

    if-ne v9, v3, :cond_0

    iget-boolean v3, v12, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->markupEnabled:Z

    if-eqz v3, :cond_0

    .line 418
    move/from16 v0, p4

    move/from16 v1, p5

    if-ge v0, v1, :cond_5

    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v5, 0x5b

    if-ne v3, v5, :cond_5

    .line 419
    add-int/lit8 p4, p4, 0x1

    .line 429
    :cond_0
    invoke-virtual {v11, v9}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v4

    .line 430
    if-eqz v4, :cond_6

    .line 431
    iget v3, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    int-to-float v3, v3

    add-float v5, p2, v3

    iget v3, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    int-to-float v3, v3

    add-float v6, p3, v3

    iget v3, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    int-to-float v7, v3

    iget v3, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    int-to-float v8, v3

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addGlyph(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;FFFF)V

    .line 432
    iget v3, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    int-to-float v3, v3

    add-float p2, p2, v3

    move/from16 v16, p4

    .line 436
    .end local v9    # "ch":C
    .end local p4    # "start":I
    .restart local v16    # "start":I
    :cond_1
    :goto_2
    move/from16 v0, v16

    move/from16 v1, p5

    if-ge v0, v1, :cond_10

    .line 437
    add-int/lit8 p4, v16, 0x1

    .end local v16    # "start":I
    .restart local p4    # "start":I
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    .line 438
    .restart local v9    # "ch":C
    const/16 v3, 0x5b

    if-ne v9, v3, :cond_2

    iget-boolean v3, v12, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->markupEnabled:Z

    if-eqz v3, :cond_2

    .line 439
    move/from16 v0, p4

    move/from16 v1, p5

    if-ge v0, v1, :cond_7

    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v5, 0x5b

    if-ne v3, v5, :cond_7

    .line 440
    add-int/lit8 p4, p4, 0x1

    .line 450
    :cond_2
    invoke-virtual {v11, v9}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v13

    .line 451
    .local v13, "g":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    if-eqz v13, :cond_3

    .line 452
    invoke-virtual {v4, v9}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->getKerning(C)I

    move-result v3

    int-to-float v3, v3

    add-float p2, p2, v3

    .line 453
    move-object v4, v13

    .line 454
    iget v3, v13, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    int-to-float v3, v3

    add-float v5, p2, v3

    iget v3, v13, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    int-to-float v3, v3

    add-float v6, p3, v3

    iget v3, v13, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    int-to-float v7, v3

    iget v3, v13, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    int-to-float v8, v3

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addGlyph(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;FFFF)V

    .line 455
    iget v3, v13, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    int-to-float v3, v3

    add-float p2, p2, v3

    :cond_3
    move/from16 v16, p4

    .line 457
    .end local p4    # "start":I
    .restart local v16    # "start":I
    goto :goto_2

    .line 413
    .end local v9    # "ch":C
    .end local v13    # "g":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v16    # "start":I
    .restart local p4    # "start":I
    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 421
    .restart local v9    # "ch":C
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->markup:Lcom/badlogic/gdx/graphics/g2d/TextMarkup;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->charsCount:I

    move-object/from16 v0, p1

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-virtual {v3, v0, v5, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->parseColorTag(Ljava/lang/CharSequence;III)I

    move-result v10

    .line 422
    .local v10, "colorTagLen":I
    if-ltz v10, :cond_0

    .line 423
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->markup:Lcom/badlogic/gdx/graphics/g2d/TextMarkup;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->getLastColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->color:F

    .line 424
    add-int/lit8 v3, v10, 0x1

    add-int p4, p4, v3

    move/from16 v16, p4

    .line 425
    .end local p4    # "start":I
    .restart local v16    # "start":I
    goto/16 :goto_1

    .end local v10    # "colorTagLen":I
    .end local v16    # "start":I
    .restart local p4    # "start":I
    :cond_6
    move/from16 v16, p4

    .line 435
    .end local p4    # "start":I
    .restart local v16    # "start":I
    goto/16 :goto_1

    .line 442
    .end local v16    # "start":I
    .restart local p4    # "start":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->markup:Lcom/badlogic/gdx/graphics/g2d/TextMarkup;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->charsCount:I

    move-object/from16 v0, p1

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-virtual {v3, v0, v5, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->parseColorTag(Ljava/lang/CharSequence;III)I

    move-result v10

    .line 443
    .restart local v10    # "colorTagLen":I
    if-ltz v10, :cond_2

    .line 444
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->markup:Lcom/badlogic/gdx/graphics/g2d/TextMarkup;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->getLastColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->color:F

    .line 445
    add-int/lit8 v3, v10, 0x1

    add-int p4, p4, v3

    move/from16 v16, p4

    .line 446
    .end local p4    # "start":I
    .restart local v16    # "start":I
    goto/16 :goto_2

    .line 459
    .end local v9    # "ch":C
    .end local v10    # "colorTagLen":I
    .end local v16    # "start":I
    .restart local p4    # "start":I
    :cond_8
    iget v14, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    .local v14, "scaleX":F
    iget v15, v11, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleY:F

    .local v15, "scaleY":F
    move/from16 v16, p4

    .line 460
    .end local p4    # "start":I
    .restart local v16    # "start":I
    :goto_3
    move/from16 v0, v16

    move/from16 v1, p5

    if-ge v0, v1, :cond_a

    .line 461
    add-int/lit8 p4, v16, 0x1

    .end local v16    # "start":I
    .restart local p4    # "start":I
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    .line 462
    .restart local v9    # "ch":C
    const/16 v3, 0x5b

    if-ne v9, v3, :cond_9

    iget-boolean v3, v12, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->markupEnabled:Z

    if-eqz v3, :cond_9

    .line 463
    move/from16 v0, p4

    move/from16 v1, p5

    if-ge v0, v1, :cond_d

    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v5, 0x5b

    if-ne v3, v5, :cond_d

    .line 464
    add-int/lit8 p4, p4, 0x1

    .line 474
    :cond_9
    invoke-virtual {v11, v9}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v4

    .line 475
    if-eqz v4, :cond_e

    .line 476
    iget v3, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    int-to-float v3, v3

    mul-float/2addr v3, v14

    add-float v5, p2, v3

    iget v3, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    int-to-float v3, v3

    mul-float/2addr v3, v15

    add-float v6, p3, v3

    iget v3, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    int-to-float v3, v3

    mul-float v7, v3, v14

    iget v3, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    int-to-float v3, v3

    mul-float v8, v3, v15

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addGlyph(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;FFFF)V

    .line 481
    iget v3, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    int-to-float v3, v3

    mul-float/2addr v3, v14

    add-float p2, p2, v3

    move/from16 v16, p4

    .line 485
    .end local v9    # "ch":C
    .end local p4    # "start":I
    .restart local v16    # "start":I
    :cond_a
    :goto_4
    move/from16 v0, v16

    move/from16 v1, p5

    if-ge v0, v1, :cond_10

    .line 486
    add-int/lit8 p4, v16, 0x1

    .end local v16    # "start":I
    .restart local p4    # "start":I
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    .line 487
    .restart local v9    # "ch":C
    const/16 v3, 0x5b

    if-ne v9, v3, :cond_b

    iget-boolean v3, v12, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->markupEnabled:Z

    if-eqz v3, :cond_b

    .line 488
    move/from16 v0, p4

    move/from16 v1, p5

    if-ge v0, v1, :cond_f

    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v5, 0x5b

    if-ne v3, v5, :cond_f

    .line 489
    add-int/lit8 p4, p4, 0x1

    .line 499
    :cond_b
    invoke-virtual {v11, v9}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v13

    .line 500
    .restart local v13    # "g":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    if-eqz v13, :cond_c

    .line 501
    invoke-virtual {v4, v9}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->getKerning(C)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v14

    add-float p2, p2, v3

    .line 502
    move-object v4, v13

    .line 503
    iget v3, v13, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    int-to-float v3, v3

    mul-float/2addr v3, v14

    add-float v5, p2, v3

    iget v3, v13, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    int-to-float v3, v3

    mul-float/2addr v3, v15

    add-float v6, p3, v3

    iget v3, v13, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    int-to-float v3, v3

    mul-float v7, v3, v14

    iget v3, v13, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    int-to-float v3, v3

    mul-float v8, v3, v15

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addGlyph(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;FFFF)V

    .line 508
    iget v3, v13, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    int-to-float v3, v3

    mul-float/2addr v3, v14

    add-float p2, p2, v3

    :cond_c
    move/from16 v16, p4

    .line 510
    .end local p4    # "start":I
    .restart local v16    # "start":I
    goto :goto_4

    .line 466
    .end local v13    # "g":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v16    # "start":I
    .restart local p4    # "start":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->markup:Lcom/badlogic/gdx/graphics/g2d/TextMarkup;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->charsCount:I

    move-object/from16 v0, p1

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-virtual {v3, v0, v5, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->parseColorTag(Ljava/lang/CharSequence;III)I

    move-result v10

    .line 467
    .restart local v10    # "colorTagLen":I
    if-ltz v10, :cond_9

    .line 468
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->markup:Lcom/badlogic/gdx/graphics/g2d/TextMarkup;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->getLastColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->color:F

    .line 469
    add-int/lit8 v3, v10, 0x1

    add-int p4, p4, v3

    move/from16 v16, p4

    .line 470
    .end local p4    # "start":I
    .restart local v16    # "start":I
    goto/16 :goto_3

    .end local v10    # "colorTagLen":I
    .end local v16    # "start":I
    .restart local p4    # "start":I
    :cond_e
    move/from16 v16, p4

    .line 484
    .end local p4    # "start":I
    .restart local v16    # "start":I
    goto/16 :goto_3

    .line 491
    .end local v16    # "start":I
    .restart local p4    # "start":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->markup:Lcom/badlogic/gdx/graphics/g2d/TextMarkup;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->charsCount:I

    move-object/from16 v0, p1

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-virtual {v3, v0, v5, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->parseColorTag(Ljava/lang/CharSequence;III)I

    move-result v10

    .line 492
    .restart local v10    # "colorTagLen":I
    if-ltz v10, :cond_b

    .line 493
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->markup:Lcom/badlogic/gdx/graphics/g2d/TextMarkup;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->getLastColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->color:F

    .line 494
    add-int/lit8 v3, v10, 0x1

    add-int p4, p4, v3

    move/from16 v16, p4

    .line 495
    .end local p4    # "start":I
    .restart local v16    # "start":I
    goto/16 :goto_4

    .end local v9    # "ch":C
    .end local v10    # "colorTagLen":I
    .end local v14    # "scaleX":F
    .end local v15    # "scaleY":F
    :cond_10
    move/from16 p4, v16

    .line 512
    .end local v16    # "start":I
    .restart local p4    # "start":I
    sub-float v3, p2, v17

    return v3
.end method

.method private countGlyphs(Ljava/lang/CharSequence;II)I
    .locals 7
    .param p1, "seq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/16 v6, 0x5b

    .line 338
    sub-int v2, p3, p2

    .line 339
    .local v2, "count":I
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-boolean v4, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->markupEnabled:Z

    if-eqz v4, :cond_3

    move v3, p2

    .line 340
    .end local p2    # "start":I
    .local v3, "start":I
    :goto_0
    if-ge v3, p3, :cond_2

    .line 341
    add-int/lit8 p2, v3, 0x1

    .end local v3    # "start":I
    .restart local p2    # "start":I
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 342
    .local v0, "ch":C
    if-ne v0, v6, :cond_0

    .line 343
    if-ge p2, p3, :cond_1

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_1

    .line 344
    add-int/lit8 p2, p2, 0x1

    .line 345
    add-int/lit8 v2, v2, -0x1

    :cond_0
    :goto_1
    move v3, p2

    .line 354
    .end local p2    # "start":I
    .restart local v3    # "start":I
    goto :goto_0

    .line 347
    .end local v3    # "start":I
    .restart local p2    # "start":I
    :cond_1
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->markup:Lcom/badlogic/gdx/graphics/g2d/TextMarkup;

    const/4 v5, -0x1

    invoke-virtual {v4, p1, v5, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->parseColorTag(Ljava/lang/CharSequence;III)I

    move-result v1

    .line 348
    .local v1, "colorTagLen":I
    if-ltz v1, :cond_0

    .line 349
    add-int/lit8 v4, v1, 0x1

    add-int/2addr p2, v4

    .line 350
    add-int/lit8 v4, v1, 0x2

    sub-int/2addr v2, v4

    goto :goto_1

    .end local v0    # "ch":C
    .end local v1    # "colorTagLen":I
    .end local p2    # "start":I
    .restart local v3    # "start":I
    :cond_2
    move p2, v3

    .line 356
    .end local v3    # "start":I
    .restart local p2    # "start":I
    :cond_3
    return v2
.end method

.method private require(II)V
    .locals 6
    .param p1, "page"    # I
    .param p2, "glyphCount"    # I

    .prologue
    const/4 v5, 0x0

    .line 392
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->glyphIndices:[Lcom/badlogic/gdx/utils/IntArray;

    if-eqz v3, :cond_0

    .line 393
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->glyphIndices:[Lcom/badlogic/gdx/utils/IntArray;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    array-length v3, v3

    if-le p2, v3, :cond_0

    .line 394
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->glyphIndices:[Lcom/badlogic/gdx/utils/IntArray;

    aget-object v3, v3, p1

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->glyphIndices:[Lcom/badlogic/gdx/utils/IntArray;

    aget-object v4, v4, p1

    iget-object v4, v4, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    array-length v4, v4

    sub-int v4, p2, v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/IntArray;->ensureCapacity(I)[I

    .line 397
    :cond_0
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:[I

    aget v3, v3, p1

    mul-int/lit8 v4, p2, 0x14

    add-int v1, v3, v4

    .line 398
    .local v1, "vertexCount":I
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->vertexData:[[F

    aget-object v2, v3, p1

    .line 399
    .local v2, "vertices":[F
    if-nez v2, :cond_2

    .line 400
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->vertexData:[[F

    new-array v4, v1, [F

    aput-object v4, v3, p1

    .line 406
    :cond_1
    :goto_0
    return-void

    .line 401
    :cond_2
    array-length v3, v2

    if-ge v3, v1, :cond_1

    .line 402
    new-array v0, v1, [F

    .line 403
    .local v0, "newVertices":[F
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:[I

    aget v3, v3, p1

    invoke-static {v2, v5, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 404
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->vertexData:[[F

    aput-object v0, v3, p1

    goto :goto_0
.end method

.method private requireSequence(Ljava/lang/CharSequence;II)V
    .locals 11
    .param p1, "seq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/16 v10, 0x5b

    const/4 v9, 0x0

    .line 360
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->vertexData:[[F

    array-length v7, v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 362
    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->countGlyphs(Ljava/lang/CharSequence;II)I

    move-result v5

    .line 363
    .local v5, "newGlyphCount":I
    invoke-direct {p0, v9, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->require(II)V

    .line 389
    .end local v5    # "newGlyphCount":I
    :goto_0
    return-void

    .line 365
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->tmpGlyphCount:[I

    array-length v4, v7

    .local v4, "n":I
    :goto_1
    if-ge v3, v4, :cond_7

    .line 366
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->tmpGlyphCount:[I

    aput v9, v7, v3

    .line 365
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 369
    .end local p2    # "start":I
    .local v6, "start":I
    :goto_2
    if-ge v6, p3, :cond_5

    .line 370
    add-int/lit8 p2, v6, 0x1

    .end local v6    # "start":I
    .restart local p2    # "start":I
    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 371
    .local v0, "ch":C
    if-ne v0, v10, :cond_3

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-boolean v7, v7, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->markupEnabled:Z

    if-eqz v7, :cond_3

    .line 372
    if-ge p2, p3, :cond_1

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-eq v7, v10, :cond_2

    .line 373
    :cond_1
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->markup:Lcom/badlogic/gdx/graphics/g2d/TextMarkup;

    const/4 v8, -0x1

    invoke-virtual {v7, p1, v8, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->parseColorTag(Ljava/lang/CharSequence;III)I

    move-result v1

    .line 374
    .local v1, "colorTagLen":I
    if-ltz v1, :cond_2

    .line 375
    add-int/lit8 v7, v1, 0x1

    add-int/2addr p2, v7

    move v6, p2

    .line 376
    .end local p2    # "start":I
    .restart local v6    # "start":I
    goto :goto_2

    .line 379
    .end local v1    # "colorTagLen":I
    .end local v6    # "start":I
    .restart local p2    # "start":I
    :cond_2
    add-int/lit8 p2, p2, 0x1

    .line 381
    :cond_3
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v7, v7, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    invoke-virtual {v7, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v2

    .line 382
    .local v2, "g":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    if-nez v2, :cond_4

    move v6, p2

    .end local p2    # "start":I
    .restart local v6    # "start":I
    goto :goto_2

    .line 383
    .end local v6    # "start":I
    .restart local p2    # "start":I
    :cond_4
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->tmpGlyphCount:[I

    iget v8, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->page:I

    aget v9, v7, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v7, v8

    move v6, p2

    .line 384
    .end local p2    # "start":I
    .restart local v6    # "start":I
    goto :goto_2

    .line 386
    .end local v0    # "ch":C
    .end local v2    # "g":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    :cond_5
    const/4 v3, 0x0

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->tmpGlyphCount:[I

    array-length v4, v7

    :goto_3
    if-ge v3, v4, :cond_6

    .line 387
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->tmpGlyphCount:[I

    aget v7, v7, v3

    invoke-direct {p0, v3, v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->require(II)V

    .line 386
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    move p2, v6

    .end local v6    # "start":I
    .restart local p2    # "start":I
    goto :goto_0

    :cond_7
    move v6, p2

    .end local p2    # "start":I
    .restart local v6    # "start":I
    goto :goto_2
.end method

.method private setColor(Lcom/badlogic/gdx/graphics/Color;F)Lcom/badlogic/gdx/graphics/Color;
    .locals 3
    .param p1, "color"    # Lcom/badlogic/gdx/graphics/Color;
    .param p2, "floatColor"    # F

    .prologue
    const/high16 v2, 0x437f0000    # 255.0f

    .line 117
    invoke-static {p2}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntColor(F)I

    move-result v0

    .line 118
    .local v0, "intBits":I
    and-int/lit16 v1, v0, 0xff

    int-to-float v1, v1

    div-float/2addr v1, v2

    iput v1, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 119
    ushr-int/lit8 v1, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    div-float/2addr v1, v2

    iput v1, p1, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 120
    ushr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    div-float/2addr v1, v2

    iput v1, p1, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 121
    ushr-int/lit8 v1, v0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    div-float/2addr v1, v2

    iput v1, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 122
    return-object p1
.end method


# virtual methods
.method public addMultiLineText(Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 6
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 619
    const/4 v4, 0x0

    sget-object v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;->LEFT:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addMultiLineText(Ljava/lang/CharSequence;FFFLcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v0

    return-object v0
.end method

.method public addMultiLineText(Ljava/lang/CharSequence;FFFLcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 15
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "alignmentWidth"    # F
    .param p5, "alignment"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    .prologue
    .line 629
    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 631
    .local v8, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    .line 632
    .local v9, "length":I
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1, v9}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->requireSequence(Ljava/lang/CharSequence;II)V

    .line 634
    iget-object v1, v8, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->ascent:F

    add-float p3, p3, v1

    .line 635
    iget-object v1, v8, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v7, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->down:F

    .line 637
    .local v7, "down":F
    const/4 v11, 0x0

    .line 638
    .local v11, "maxWidth":F
    move/from16 v13, p3

    .line 639
    .local v13, "startY":F
    const/4 v5, 0x0

    .line 640
    .local v5, "start":I
    const/4 v12, 0x0

    .line 641
    .local v12, "numLines":I
    :goto_0
    if-ge v5, v9, :cond_1

    .line 642
    const/16 v1, 0xa

    move-object/from16 v0, p1

    invoke-static {v0, v1, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v6

    .line 643
    .local v6, "lineEnd":I
    const/4 v14, 0x0

    .line 644
    .local v14, "xOffset":F
    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;->LEFT:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    move-object/from16 v0, p5

    if-eq v0, v1, :cond_0

    .line 645
    move-object/from16 v0, p1

    invoke-virtual {v8, v0, v5, v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getBounds(Ljava/lang/CharSequence;II)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v1

    iget v10, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    .line 646
    .local v10, "lineWidth":F
    sub-float v14, p4, v10

    .line 647
    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;->CENTER:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    move-object/from16 v0, p5

    if-ne v0, v1, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v14, v1

    .line 649
    .end local v10    # "lineWidth":F
    :cond_0
    add-float v3, p2, v14

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addToCache(Ljava/lang/CharSequence;FFII)F

    move-result v10

    .line 650
    .restart local v10    # "lineWidth":F
    invoke-static {v11, v10}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 651
    add-int/lit8 v5, v6, 0x1

    .line 652
    add-float p3, p3, v7

    .line 653
    add-int/lit8 v12, v12, 0x1

    .line 654
    goto :goto_0

    .line 655
    .end local v6    # "lineEnd":I
    .end local v10    # "lineWidth":F
    .end local v14    # "xOffset":F
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iput v11, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    .line 656
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget-object v2, v8, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    add-int/lit8 v3, v12, -0x1

    int-to-float v3, v3

    iget-object v4, v8, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->lineHeight:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    .line 657
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    return-object v1
.end method

.method public addText(Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 6
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 585
    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addText(Ljava/lang/CharSequence;FFII)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v0

    return-object v0
.end method

.method public addText(Ljava/lang/CharSequence;FFII)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 2
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "start"    # I
    .param p5, "end"    # I

    .prologue
    .line 595
    invoke-direct {p0, p1, p4, p5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->requireSequence(Ljava/lang/CharSequence;II)V

    .line 596
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->ascent:F

    add-float/2addr p3, v0

    .line 597
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    invoke-direct/range {p0 .. p5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addToCache(Ljava/lang/CharSequence;FFII)F

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    .line 598
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    .line 599
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    return-object v0
.end method

.method public addWrappedText(Ljava/lang/CharSequence;FFF)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 6
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "wrapWidth"    # F

    .prologue
    .line 679
    sget-object v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;->LEFT:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addWrappedText(Ljava/lang/CharSequence;FFFLcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v0

    return-object v0
.end method

.method public addWrappedText(Ljava/lang/CharSequence;FFFLcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 18
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "wrapWidth"    # F
    .param p5, "alignment"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    .prologue
    .line 688
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 690
    .local v10, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v11

    .line 691
    .local v11, "length":I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v11}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->requireSequence(Ljava/lang/CharSequence;II)V

    .line 693
    iget-object v2, v10, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->ascent:F

    add-float p3, p3, v2

    .line 694
    iget-object v2, v10, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v9, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->down:F

    .line 696
    .local v9, "down":F
    const/4 v2, 0x0

    cmpg-float v2, p4, v2

    if-gtz v2, :cond_0

    const/high16 p4, 0x4f000000

    .line 697
    :cond_0
    const/4 v13, 0x0

    .line 698
    .local v13, "maxWidth":F
    const/4 v6, 0x0

    .line 699
    .local v6, "start":I
    const/16 v16, 0x0

    .line 700
    .local v16, "numLines":I
    :goto_0
    if-ge v6, v11, :cond_b

    .line 701
    const/16 v2, 0xa

    move-object/from16 v0, p1

    invoke-static {v0, v2, v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v14

    .line 702
    .local v14, "newLine":I
    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-virtual {v10, v0, v6, v14, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->computeVisibleGlyphs(Ljava/lang/CharSequence;IIF)I

    move-result v2

    add-int v7, v6, v2

    .line 703
    .local v7, "lineEnd":I
    add-int/lit8 v15, v7, 0x1

    .line 704
    .local v15, "nextStart":I
    if-ge v7, v14, :cond_3

    .line 706
    :goto_1
    if-le v7, v6, :cond_1

    .line 707
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 711
    :cond_1
    if-ne v7, v6, :cond_7

    .line 712
    add-int/lit8 v2, v6, 0x1

    if-le v15, v2, :cond_2

    add-int/lit8 v15, v15, -0x1

    .line 713
    :cond_2
    move v7, v15

    .line 730
    :cond_3
    if-le v7, v6, :cond_5

    .line 731
    const/16 v17, 0x0

    .line 732
    .local v17, "xOffset":F
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;->LEFT:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    move-object/from16 v0, p5

    if-eq v0, v2, :cond_4

    .line 733
    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v6, v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getBounds(Ljava/lang/CharSequence;II)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v2

    iget v12, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    .line 734
    .local v12, "lineWidth":F
    sub-float v17, p4, v12

    .line 735
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;->CENTER:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    move-object/from16 v0, p5

    if-ne v0, v2, :cond_4

    const/high16 v2, 0x40000000    # 2.0f

    div-float v17, v17, v2

    .line 737
    .end local v12    # "lineWidth":F
    :cond_4
    add-float v4, p2, v17

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addToCache(Ljava/lang/CharSequence;FFII)F

    move-result v12

    .line 738
    .restart local v12    # "lineWidth":F
    invoke-static {v13, v12}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 740
    .end local v12    # "lineWidth":F
    .end local v17    # "xOffset":F
    :cond_5
    move v6, v15

    .line 741
    add-float p3, p3, v9

    .line 742
    add-int/lit8 v16, v16, 0x1

    .line 743
    goto :goto_0

    .line 708
    :cond_6
    add-int/lit8 v2, v7, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {v10, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->isBreakChar(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 709
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 715
    :cond_7
    move v15, v7

    .line 717
    :cond_8
    if-ge v15, v11, :cond_9

    .line 718
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    .line 719
    .local v8, "c":C
    invoke-static {v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_a

    .line 724
    .end local v8    # "c":C
    :cond_9
    :goto_2
    if-le v7, v6, :cond_3

    .line 725
    add-int/lit8 v2, v7, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 726
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 720
    .restart local v8    # "c":C
    :cond_a
    add-int/lit8 v15, v15, 0x1

    .line 721
    const/16 v2, 0xa

    if-ne v8, v2, :cond_8

    goto :goto_2

    .line 744
    .end local v7    # "lineEnd":I
    .end local v8    # "c":C
    .end local v14    # "newLine":I
    .end local v15    # "nextStart":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iput v13, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    .line 745
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget-object v3, v10, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    add-int/lit8 v4, v16, -0x1

    int-to-float v4, v4

    iget-object v5, v10, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v5, v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->lineHeight:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    .line 746
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    return-object v2
.end method

.method public clear()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 325
    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->x:F

    .line 326
    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->y:F

    .line 327
    iput v3, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->glyphCount:I

    .line 328
    iput v3, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->charsCount:I

    .line 329
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->markup:Lcom/badlogic/gdx/graphics/g2d/TextMarkup;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->clear()V

    .line 330
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:[I

    array-length v1, v2

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 331
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->glyphIndices:[Lcom/badlogic/gdx/utils/IntArray;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->glyphIndices:[Lcom/badlogic/gdx/utils/IntArray;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/IntArray;->clear()V

    .line 332
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:[I

    aput v3, v2, v0

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 334
    :cond_1
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V
    .locals 7
    .param p1, "spriteBatch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;

    .prologue
    .line 255
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getRegions()[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    .line 256
    .local v2, "regions":[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    const/4 v0, 0x0

    .local v0, "j":I
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->vertexData:[[F

    array-length v1, v4

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 257
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:[I

    aget v4, v4, v0

    if-lez v4, :cond_0

    .line 258
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->vertexData:[[F

    aget-object v3, v4, v0

    .line 259
    .local v3, "vertices":[F
    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:[I

    aget v6, v6, v0

    invoke-interface {p1, v4, v3, v5, v6}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    .line 256
    .end local v3    # "vertices":[F
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 262
    :cond_1
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 3
    .param p1, "spriteBatch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "alphaModulation"    # F

    .prologue
    .line 310
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p2, v2

    if-nez v2, :cond_0

    .line 311
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    .line 321
    :goto_0
    return-void

    .line 314
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    .line 315
    .local v0, "color":Lcom/badlogic/gdx/graphics/Color;
    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 316
    .local v1, "oldAlpha":F
    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v2, p2

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 317
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setColors(Lcom/badlogic/gdx/graphics/Color;)V

    .line 318
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    .line 319
    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 320
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setColors(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;II)V
    .locals 14
    .param p1, "spriteBatch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 265
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->vertexData:[[F

    array-length v10, v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    .line 266
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v10

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v10

    iget-object v11, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->vertexData:[[F

    const/4 v12, 0x0

    aget-object v11, v11, v12

    mul-int/lit8 v12, p2, 0x14

    sub-int v13, p3, p2

    mul-int/lit8 v13, v13, 0x14

    invoke-interface {p1, v10, v11, v12, v13}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    .line 307
    :cond_0
    return-void

    .line 274
    :cond_1
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getRegions()[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v9

    .line 277
    .local v9, "regions":[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    const/4 v4, 0x0

    .local v4, "i":I
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->vertexData:[[F

    array-length v8, v10

    .local v8, "pageCount":I
    :goto_0
    if-ge v4, v8, :cond_0

    .line 279
    const/4 v7, -0x1

    .line 280
    .local v7, "offset":I
    const/4 v1, 0x0

    .line 283
    .local v1, "count":I
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->glyphIndices:[Lcom/badlogic/gdx/utils/IntArray;

    aget-object v2, v10, v4

    .line 284
    .local v2, "currentGlyphIndices":Lcom/badlogic/gdx/utils/IntArray;
    const/4 v5, 0x0

    .local v5, "j":I
    iget v6, v2, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .local v6, "n":I
    :goto_1
    if-ge v5, v6, :cond_2

    .line 285
    iget-object v10, v2, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aget v3, v10, v5

    .line 288
    .local v3, "glyphIndex":I
    move/from16 v0, p3

    if-lt v3, v0, :cond_4

    .line 301
    .end local v3    # "glyphIndex":I
    :cond_2
    const/4 v10, -0x1

    if-eq v7, v10, :cond_3

    if-nez v1, :cond_7

    .line 277
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 292
    .restart local v3    # "glyphIndex":I
    :cond_4
    const/4 v10, -0x1

    if-ne v7, v10, :cond_5

    move/from16 v0, p2

    if-lt v3, v0, :cond_5

    move v7, v5

    .line 296
    :cond_5
    move/from16 v0, p2

    if-lt v3, v0, :cond_6

    .line 297
    add-int/lit8 v1, v1, 0x1

    .line 284
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 304
    .end local v3    # "glyphIndex":I
    :cond_7
    aget-object v10, v9, v4

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v10

    iget-object v11, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->vertexData:[[F

    aget-object v11, v11, v4

    mul-int/lit8 v12, v7, 0x14

    mul-int/lit8 v13, v1, 0x14

    invoke-interface {p1, v10, v11, v12, v13}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    goto :goto_2
.end method

.method public getBounds()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->textBounds:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    return-object v0
.end method

.method public getCharsCount()I
    .locals 1

    .prologue
    .line 796
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->charsCount:I

    return v0
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 4

    .prologue
    const/high16 v3, 0x437f0000    # 255.0f

    .line 245
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->color:F

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntColor(F)I

    move-result v1

    .line 246
    .local v1, "intBits":I
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->tempColor:Lcom/badlogic/gdx/graphics/Color;

    .line 247
    .local v0, "color":Lcom/badlogic/gdx/graphics/Color;
    and-int/lit16 v2, v1, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 248
    ushr-int/lit8 v2, v1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 249
    ushr-int/lit8 v2, v1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 250
    ushr-int/lit8 v2, v1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 251
    return-object v0
.end method

.method public getFont()Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .locals 1

    .prologue
    .line 772
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    return-object v0
.end method

.method public getVertices()[F
    .locals 1

    .prologue
    .line 787
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getVertices(I)[F

    move-result-object v0

    return-object v0
.end method

.method public getVertices(I)[F
    .locals 1
    .param p1, "page"    # I

    .prologue
    .line 791
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->vertexData:[[F

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 763
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 768
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->y:F

    return v0
.end method

.method public setAlphas(F)V
    .locals 11
    .param p1, "alpha"    # F

    .prologue
    .line 137
    const/high16 v10, 0x437e0000    # 254.0f

    mul-float/2addr v10, p1

    float-to-int v10, v10

    shl-int/lit8 v0, v10, 0x18

    .line 138
    .local v0, "alphaBits":I
    const/4 v7, 0x0

    .local v7, "prev":F
    const/4 v6, 0x0

    .line 139
    .local v6, "newColor":F
    const/4 v3, 0x0

    .local v3, "j":I
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->vertexData:[[F

    array-length v4, v10

    .local v4, "length":I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 140
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->vertexData:[[F

    aget-object v9, v10, v3

    .line 141
    .local v9, "vertices":[F
    const/4 v2, 0x2

    .local v2, "i":I
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:[I

    aget v5, v10, v3

    .local v5, "n":I
    :goto_1
    if-ge v2, v5, :cond_1

    .line 142
    aget v1, v9, v2

    .line 143
    .local v1, "c":F
    cmpl-float v10, v1, v7

    if-nez v10, :cond_0

    const/4 v10, 0x2

    if-eq v2, v10, :cond_0

    .line 144
    aput v6, v9, v2

    .line 141
    :goto_2
    add-int/lit8 v2, v2, 0x5

    goto :goto_1

    .line 146
    :cond_0
    move v7, v1

    .line 147
    invoke-static {v1}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntColor(F)I

    move-result v8

    .line 148
    .local v8, "rgba":I
    const v10, 0xffffff

    and-int/2addr v10, v8

    or-int v8, v10, v0

    .line 149
    invoke-static {v8}, Lcom/badlogic/gdx/utils/NumberUtils;->intToFloatColor(I)F

    move-result v6

    .line 150
    aput v6, v9, v2

    goto :goto_2

    .line 139
    .end local v1    # "c":F
    .end local v8    # "rgba":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 154
    .end local v2    # "i":I
    .end local v5    # "n":I
    .end local v9    # "vertices":[F
    :cond_2
    return-void
.end method

.method public setBreakChars([C)V
    .locals 1
    .param p1, "breakChars"    # [C

    .prologue
    .line 752
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setBreakChars([C)V

    .line 753
    return-void
.end method

.method public setColor(F)V
    .locals 2
    .param p1, "color"    # F

    .prologue
    .line 240
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->color:F

    .line 241
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->markup:Lcom/badlogic/gdx/graphics/g2d/TextMarkup;

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->charsCount:I

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->setDefaultChunk(FI)V

    .line 242
    return-void
.end method

.method public setColor(FFFF)V
    .locals 4
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .prologue
    const/high16 v3, 0x437f0000    # 255.0f

    .line 233
    mul-float v1, v3, p4

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x18

    mul-float v2, v3, p3

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    mul-float v2, v3, p2

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    mul-float v2, v3, p1

    float-to-int v2, v2

    or-int v0, v1, v2

    .line 234
    .local v0, "intBits":I
    invoke-static {v0}, Lcom/badlogic/gdx/utils/NumberUtils;->intToFloatColor(I)F

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->color:F

    .line 235
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->markup:Lcom/badlogic/gdx/graphics/g2d/TextMarkup;

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->charsCount:I

    invoke-virtual {v1, v0, v2}, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->setDefaultChunk(II)V

    .line 236
    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 2
    .param p1, "tint"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 227
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->color:F

    .line 228
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->markup:Lcom/badlogic/gdx/graphics/g2d/TextMarkup;

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->charsCount:I

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->setDefaultChunk(Lcom/badlogic/gdx/graphics/Color;I)V

    .line 229
    return-void
.end method

.method public setColors(F)V
    .locals 6
    .param p1, "color"    # F

    .prologue
    .line 158
    const/4 v1, 0x0

    .local v1, "j":I
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->vertexData:[[F

    array-length v2, v5

    .local v2, "length":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 159
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->vertexData:[[F

    aget-object v4, v5, v1

    .line 160
    .local v4, "vertices":[F
    const/4 v0, 0x2

    .local v0, "i":I
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:[I

    aget v3, v5, v1

    .local v3, "n":I
    :goto_1
    if-ge v0, v3, :cond_0

    .line 161
    aput p1, v4, v0

    .line 160
    add-int/lit8 v0, v0, 0x5

    goto :goto_1

    .line 158
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    .end local v0    # "i":I
    .end local v3    # "n":I
    .end local v4    # "vertices":[F
    :cond_1
    return-void
.end method

.method public setColors(FFFF)V
    .locals 10
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .prologue
    const/high16 v9, 0x437f0000    # 255.0f

    .line 177
    mul-float v7, v9, p4

    float-to-int v7, v7

    shl-int/lit8 v7, v7, 0x18

    mul-float v8, v9, p3

    float-to-int v8, v8

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v7, v8

    mul-float v8, v9, p2

    float-to-int v8, v8

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    mul-float v8, v9, p1

    float-to-int v8, v8

    or-int v2, v7, v8

    .line 178
    .local v2, "intBits":I
    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->intToFloatColor(I)F

    move-result v0

    .line 179
    .local v0, "color":F
    const/4 v3, 0x0

    .local v3, "j":I
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->vertexData:[[F

    array-length v4, v7

    .local v4, "length":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 180
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->vertexData:[[F

    aget-object v6, v7, v3

    .line 181
    .local v6, "vertices":[F
    const/4 v1, 0x2

    .local v1, "i":I
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:[I

    aget v5, v7, v3

    .local v5, "n":I
    :goto_1
    if-ge v1, v5, :cond_0

    .line 182
    aput v0, v6, v1

    .line 181
    add-int/lit8 v1, v1, 0x5

    goto :goto_1

    .line 179
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 184
    .end local v1    # "i":I
    .end local v5    # "n":I
    .end local v6    # "vertices":[F
    :cond_1
    return-void
.end method

.method public setColors(FII)V
    .locals 9
    .param p1, "color"    # F
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 195
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->vertexData:[[F

    array-length v7, v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 196
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->vertexData:[[F

    const/4 v8, 0x0

    aget-object v6, v7, v8

    .line 197
    .local v6, "vertices":[F
    mul-int/lit8 v7, p2, 0x14

    add-int/lit8 v1, v7, 0x2

    .local v1, "i":I
    mul-int/lit8 v3, p3, 0x14

    .local v3, "n":I
    :goto_0
    if-ge v1, v3, :cond_4

    .line 198
    aput p1, v6, v1

    .line 197
    add-int/lit8 v1, v1, 0x5

    goto :goto_0

    .line 200
    .end local v1    # "i":I
    .end local v3    # "n":I
    .end local v6    # "vertices":[F
    :cond_0
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->vertexData:[[F

    array-length v5, v7

    .line 203
    .local v5, "pageCount":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v5, :cond_4

    .line 204
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->vertexData:[[F

    aget-object v6, v7, v1

    .line 207
    .restart local v6    # "vertices":[F
    const/4 v2, 0x0

    .local v2, "j":I
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->glyphIndices:[Lcom/badlogic/gdx/utils/IntArray;

    aget-object v7, v7, v1

    iget v3, v7, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .restart local v3    # "n":I
    :goto_2
    if-ge v2, v3, :cond_1

    .line 208
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->glyphIndices:[Lcom/badlogic/gdx/utils/IntArray;

    aget-object v7, v7, v1

    iget-object v7, v7, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aget v0, v7, v2

    .line 211
    .local v0, "gInd":I
    if-lt v0, p3, :cond_2

    .line 203
    .end local v0    # "gInd":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 214
    .restart local v0    # "gInd":I
    :cond_2
    if-lt v0, p2, :cond_3

    .line 216
    const/4 v4, 0x0

    .local v4, "off":I
    :goto_3
    const/16 v7, 0x14

    if-ge v4, v7, :cond_3

    .line 217
    mul-int/lit8 v7, v2, 0x14

    add-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v4

    aput p1, v6, v7

    .line 216
    add-int/lit8 v4, v4, 0x5

    goto :goto_3

    .line 207
    .end local v4    # "off":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 223
    .end local v0    # "gInd":I
    .end local v2    # "j":I
    .end local v3    # "n":I
    .end local v5    # "pageCount":I
    .end local v6    # "vertices":[F
    :cond_4
    return-void
.end method

.method public setColors(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 7
    .param p1, "tint"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 167
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    .line 168
    .local v0, "color":F
    const/4 v2, 0x0

    .local v2, "j":I
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->vertexData:[[F

    array-length v3, v6

    .local v3, "length":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 169
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->vertexData:[[F

    aget-object v5, v6, v2

    .line 170
    .local v5, "vertices":[F
    const/4 v1, 0x2

    .local v1, "i":I
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:[I

    aget v4, v6, v2

    .local v4, "n":I
    :goto_1
    if-ge v1, v4, :cond_0

    .line 171
    aput v0, v5, v1

    .line 170
    add-int/lit8 v1, v1, 0x5

    goto :goto_1

    .line 168
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 173
    .end local v1    # "i":I
    .end local v4    # "n":I
    .end local v5    # "vertices":[F
    :cond_1
    return-void
.end method

.method public setColors(Lcom/badlogic/gdx/graphics/Color;II)V
    .locals 1
    .param p1, "tint"    # Lcom/badlogic/gdx/graphics/Color;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 189
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setColors(FII)V

    .line 190
    return-void
.end method

.method public setMultiLineText(Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 6
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 605
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->clear()V

    .line 606
    const/4 v4, 0x0

    sget-object v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;->LEFT:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addMultiLineText(Ljava/lang/CharSequence;FFFLcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v0

    return-object v0
.end method

.method public setMultiLineText(Ljava/lang/CharSequence;FFFLcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 1
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "alignmentWidth"    # F
    .param p5, "alignment"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    .prologue
    .line 612
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->clear()V

    .line 613
    invoke-virtual/range {p0 .. p5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addMultiLineText(Ljava/lang/CharSequence;FFFLcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v0

    return-object v0
.end method

.method public setPosition(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 92
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->x:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->y:F

    sub-float v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->translate(FF)V

    .line 93
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 6
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 571
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->clear()V

    .line 572
    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addText(Ljava/lang/CharSequence;FFII)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;FFII)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 1
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "start"    # I
    .param p5, "end"    # I

    .prologue
    .line 578
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->clear()V

    .line 579
    invoke-virtual/range {p0 .. p5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addText(Ljava/lang/CharSequence;FFII)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v0

    return-object v0
.end method

.method public setUseIntegerPositions(Z)V
    .locals 0
    .param p1, "use"    # Z

    .prologue
    .line 778
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->integer:Z

    .line 779
    return-void
.end method

.method public setWrappedText(Ljava/lang/CharSequence;FFF)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 6
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "wrapWidth"    # F

    .prologue
    .line 664
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->clear()V

    .line 665
    sget-object v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;->LEFT:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addWrappedText(Ljava/lang/CharSequence;FFFLcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v0

    return-object v0
.end method

.method public setWrappedText(Ljava/lang/CharSequence;FFFLcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
    .locals 1
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "wrapWidth"    # F
    .param p5, "alignment"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;

    .prologue
    .line 672
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->clear()V

    .line 673
    invoke-virtual/range {p0 .. p5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addWrappedText(Ljava/lang/CharSequence;FFFLcom/badlogic/gdx/graphics/g2d/BitmapFont$HAlignment;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v0

    return-object v0
.end method

.method public tint(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 2
    .param p1, "tint"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 127
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    .line 128
    .local v0, "floatTint":F
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->textChanged:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->oldTint:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_1

    .line 129
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->textChanged:Z

    .line 130
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->oldTint:F

    .line 131
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->markup:Lcom/badlogic/gdx/graphics/g2d/TextMarkup;

    invoke-virtual {v1, p0, p1}, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->tint(Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;Lcom/badlogic/gdx/graphics/Color;)V

    .line 133
    :cond_1
    return-void
.end method

.method public translate(FF)V
    .locals 7
    .param p1, "xAmount"    # F
    .param p2, "yAmount"    # F

    .prologue
    const/4 v6, 0x0

    .line 99
    cmpl-float v5, p1, v6

    if-nez v5, :cond_1

    cmpl-float v5, p2, v6

    if-nez v5, :cond_1

    .line 114
    :cond_0
    return-void

    .line 100
    :cond_1
    iget-boolean v5, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->integer:Z

    if-eqz v5, :cond_2

    .line 101
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float p1, v5

    .line 102
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float p2, v5

    .line 104
    :cond_2
    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->x:F

    add-float/2addr v5, p1

    iput v5, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->x:F

    .line 105
    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->y:F

    add-float/2addr v5, p2

    iput v5, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->y:F

    .line 107
    const/4 v1, 0x0

    .local v1, "j":I
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->vertexData:[[F

    array-length v2, v5

    .local v2, "length":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 108
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->vertexData:[[F

    aget-object v4, v5, v1

    .line 109
    .local v4, "vertices":[F
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->idx:[I

    aget v3, v5, v1

    .local v3, "n":I
    :goto_1
    if-ge v0, v3, :cond_3

    .line 110
    aget v5, v4, v0

    add-float/2addr v5, p1

    aput v5, v4, v0

    .line 111
    add-int/lit8 v5, v0, 0x1

    aget v6, v4, v5

    add-float/2addr v6, p2

    aput v6, v4, v5

    .line 109
    add-int/lit8 v0, v0, 0x5

    goto :goto_1

    .line 107
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public usesIntegerPositions()Z
    .locals 1

    .prologue
    .line 783
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->integer:Z

    return v0
.end method
