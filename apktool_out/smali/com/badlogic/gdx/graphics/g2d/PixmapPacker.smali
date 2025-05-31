.class public Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;
.super Ljava/lang/Object;
.source "PixmapPacker.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;,
        Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;
    }
.end annotation


# instance fields
.field currPage:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

.field disposed:Z

.field final duplicateBorder:Z

.field final padding:I

.field final pageFormat:Lcom/badlogic/gdx/graphics/Pixmap$Format;

.field final pageHeight:I

.field final pageWidth:I

.field final pages:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;IZ)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .param p4, "padding"    # I
    .param p5, "duplicateBorder"    # Z

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    .line 149
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageWidth:I

    .line 150
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageHeight:I

    .line 151
    iput-object p3, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageFormat:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    .line 152
    iput p4, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->padding:I

    .line 153
    iput-boolean p5, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->duplicateBorder:Z

    .line 154
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->newPage()V

    .line 155
    return-void
.end method

.method private insert(Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;Lcom/badlogic/gdx/math/Rectangle;)Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;
    .locals 6
    .param p1, "node"    # Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;
    .param p2, "rect"    # Lcom/badlogic/gdx/math/Rectangle;

    .prologue
    const/4 v2, 0x0

    .line 230
    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->leaveName:Ljava/lang/String;

    if-nez v3, :cond_1

    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->leftChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rightChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    if-eqz v3, :cond_1

    .line 231
    const/4 v2, 0x0

    .line 233
    .local v2, "newNode":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;
    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->leftChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    invoke-direct {p0, v3, p2}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->insert(Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;Lcom/badlogic/gdx/math/Rectangle;)Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    move-result-object v2

    .line 234
    if-nez v2, :cond_0

    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rightChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    invoke-direct {p0, v3, p2}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->insert(Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;Lcom/badlogic/gdx/math/Rectangle;)Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    move-result-object v2

    .line 272
    .end local v2    # "newNode":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;
    :cond_0
    :goto_0
    return-object v2

    .line 238
    :cond_1
    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->leaveName:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 240
    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v4, p2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget v4, p2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    move-object v2, p1

    goto :goto_0

    .line 242
    :cond_2
    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v4, p2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_0

    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget v4, p2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_0

    .line 244
    new-instance v3, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    invoke-direct {v3}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;-><init>()V

    iput-object v3, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->leftChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    .line 245
    new-instance v3, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    invoke-direct {v3}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;-><init>()V

    iput-object v3, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rightChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    .line 247
    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->width:F

    float-to-int v3, v3

    iget v4, p2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    float-to-int v4, v4

    sub-int v1, v3, v4

    .line 248
    .local v1, "deltaWidth":I
    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->height:F

    float-to-int v3, v3

    iget v4, p2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    float-to-int v4, v4

    sub-int v0, v3, v4

    .line 250
    .local v0, "deltaHeight":I
    if-le v1, v0, :cond_3

    .line 251
    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->leftChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v4, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iput v4, v3, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 252
    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->leftChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v4, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iput v4, v3, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 253
    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->leftChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, p2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iput v4, v3, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 254
    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->leftChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v4, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iput v4, v3, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 256
    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rightChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v4, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v5, p2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v4, v5

    iput v4, v3, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 257
    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rightChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v4, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iput v4, v3, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 258
    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rightChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v4, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v5, p2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    sub-float/2addr v4, v5

    iput v4, v3, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 259
    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rightChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v4, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iput v4, v3, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 272
    :goto_1
    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->leftChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    invoke-direct {p0, v3, p2}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->insert(Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;Lcom/badlogic/gdx/math/Rectangle;)Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    move-result-object v2

    goto/16 :goto_0

    .line 261
    :cond_3
    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->leftChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v4, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iput v4, v3, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 262
    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->leftChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v4, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iput v4, v3, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 263
    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->leftChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v4, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iput v4, v3, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 264
    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->leftChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, p2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iput v4, v3, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 266
    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rightChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v4, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iput v4, v3, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 267
    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rightChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v4, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v5, p2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v4, v5

    iput v4, v3, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 268
    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rightChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v4, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iput v4, v3, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 269
    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rightChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v4, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget v5, p2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    sub-float/2addr v4, v5

    iput v4, v3, Lcom/badlogic/gdx/math/Rectangle;->height:F

    goto :goto_1
.end method

.method private newPage()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 221
    new-instance v8, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    invoke-direct {v8, p0}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;-><init>(Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;)V

    .line 222
    .local v8, "page":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageWidth:I

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageHeight:I

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageFormat:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v0, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    iput-object v0, v8, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    .line 223
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageWidth:I

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageHeight:I

    move v2, v1

    move-object v6, v5

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;-><init>(IIIILcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;Ljava/lang/String;)V

    iput-object v0, v8, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->root:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    .line 224
    new-instance v0, Lcom/badlogic/gdx/utils/OrderedMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/OrderedMap;-><init>()V

    iput-object v0, v8, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->rects:Lcom/badlogic/gdx/utils/OrderedMap;

    .line 225
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 226
    iput-object v8, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->currPage:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    .line 227
    return-void
.end method


# virtual methods
.method public declared-synchronized dispose()V
    .locals 3

    .prologue
    .line 317
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    .line 318
    .local v1, "page":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 317
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "page":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 320
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->disposed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    monitor-exit p0

    return-void
.end method

.method public duplicateBorder()Z
    .locals 1

    .prologue
    .line 404
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->duplicateBorder:Z

    return v0
.end method

.method public declared-synchronized generateTextureAtlas(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
    .locals 16
    .param p1, "minFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p2, "magFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p3, "useMipMaps"    # Z

    .prologue
    .line 328
    monitor-enter p0

    :try_start_0
    new-instance v8, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    invoke-direct {v8}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;-><init>()V

    .line 329
    .local v8, "atlas":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    .line 330
    .local v13, "page":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    iget-object v3, v13, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->rects:Lcom/badlogic/gdx/utils/OrderedMap;

    iget v3, v3, Lcom/badlogic/gdx/utils/OrderedMap;->size:I

    if-eqz v3, :cond_0

    .line 331
    new-instance v15, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$1;

    new-instance v2, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    iget-object v3, v13, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    iget-object v4, v13, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    move/from16 v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZZ)V

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v2}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$1;-><init>(Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;Lcom/badlogic/gdx/graphics/TextureData;)V

    .line 338
    .local v15, "texture":Lcom/badlogic/gdx/graphics/Texture;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v15, v0, v1}, Lcom/badlogic/gdx/graphics/Texture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    .line 340
    iget-object v3, v13, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->rects:Lcom/badlogic/gdx/utils/OrderedMap;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/OrderedMap;->keys()Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    move-result-object v12

    .line 341
    .local v12, "names":Lcom/badlogic/gdx/utils/ObjectMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectMap$Keys<Ljava/lang/String;>;"
    invoke-virtual {v12}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 342
    .local v11, "name":Ljava/lang/String;
    iget-object v3, v13, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->rects:Lcom/badlogic/gdx/utils/OrderedMap;

    invoke-virtual {v3, v11}, Lcom/badlogic/gdx/utils/OrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/badlogic/gdx/math/Rectangle;

    .line 343
    .local v14, "rect":Lcom/badlogic/gdx/math/Rectangle;
    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget v3, v14, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v4, v3

    iget v3, v14, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v5, v3

    iget v3, v14, Lcom/badlogic/gdx/math/Rectangle;->width:F

    float-to-int v6, v3

    iget v3, v14, Lcom/badlogic/gdx/math/Rectangle;->height:F

    float-to-int v7, v3

    move-object v3, v15

    invoke-direct/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V

    .line 344
    .local v2, "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    invoke-virtual {v8, v11, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->addRegion(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 328
    .end local v2    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .end local v8    # "atlas":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "names":Lcom/badlogic/gdx/utils/ObjectMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectMap$Keys<Ljava/lang/String;>;"
    .end local v13    # "page":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    .end local v14    # "rect":Lcom/badlogic/gdx/math/Rectangle;
    .end local v15    # "texture":Lcom/badlogic/gdx/graphics/Texture;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 348
    .restart local v8    # "atlas":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
    :cond_1
    monitor-exit p0

    return-object v8
.end method

.method public getPadding()I
    .locals 1

    .prologue
    .line 400
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->padding:I

    return v0
.end method

.method public declared-synchronized getPage(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 294
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    .line 295
    .local v1, "page":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->rects:Lcom/badlogic/gdx/utils/OrderedMap;

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/utils/OrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/math/Rectangle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    .local v2, "rect":Lcom/badlogic/gdx/math/Rectangle;
    if-eqz v2, :cond_0

    .line 298
    .end local v1    # "page":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    .end local v2    # "rect":Lcom/badlogic/gdx/math/Rectangle;
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 294
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getPageHeight()I
    .locals 1

    .prologue
    .line 396
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageHeight:I

    return v0
.end method

.method public declared-synchronized getPageIndex(Ljava/lang/String;)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 305
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_1

    .line 306
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->rects:Lcom/badlogic/gdx/utils/OrderedMap;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/utils/OrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/math/Rectangle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    .local v1, "rect":Lcom/badlogic/gdx/math/Rectangle;
    if-eqz v1, :cond_0

    .line 309
    .end local v0    # "i":I
    .end local v1    # "rect":Lcom/badlogic/gdx/math/Rectangle;
    :goto_1
    monitor-exit p0

    return v0

    .line 305
    .restart local v0    # "i":I
    .restart local v1    # "rect":Lcom/badlogic/gdx/math/Rectangle;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 309
    .end local v1    # "rect":Lcom/badlogic/gdx/math/Rectangle;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1

    .line 305
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getPageWidth()I
    .locals 1

    .prologue
    .line 392
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageWidth:I

    return v0
.end method

.method public getPages()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public declared-synchronized getRect(Ljava/lang/String;)Lcom/badlogic/gdx/math/Rectangle;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 284
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    .line 285
    .local v1, "page":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    iget-object v3, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->rects:Lcom/badlogic/gdx/utils/OrderedMap;

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/utils/OrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/math/Rectangle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    .local v2, "rect":Lcom/badlogic/gdx/math/Rectangle;
    if-eqz v2, :cond_0

    .line 288
    .end local v1    # "page":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    .end local v2    # "rect":Lcom/badlogic/gdx/math/Rectangle;
    :goto_0
    monitor-exit p0

    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 284
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized pack(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap;)Lcom/badlogic/gdx/math/Rectangle;
    .locals 18
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "image"    # Lcom/badlogic/gdx/graphics/Pixmap;

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->disposed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/16 v17, 0x0

    .line 217
    :goto_0
    monitor-exit p0

    return-object v17

    .line 168
    :cond_0
    :try_start_1
    invoke-virtual/range {p0 .. p1}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getRect(Ljava/lang/String;)Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Key with name \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is already in map"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 169
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->padding:I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->duplicateBorder:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    add-int v13, v3, v2

    .line 170
    .local v13, "borderPixels":I
    shl-int/lit8 v13, v13, 0x1

    .line 172
    new-instance v17, Lcom/badlogic/gdx/math/Rectangle;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v4

    add-int/2addr v4, v13

    int-to-float v4, v4

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v5

    add-int/2addr v5, v13

    int-to-float v5, v5

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    .line 173
    .local v17, "rect":Lcom/badlogic/gdx/math/Rectangle;
    invoke-virtual/range {v17 .. v17}, Lcom/badlogic/gdx/math/Rectangle;->getWidth()F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageWidth:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_2

    invoke-virtual/range {v17 .. v17}, Lcom/badlogic/gdx/math/Rectangle;->getHeight()F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageHeight:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 174
    :cond_2
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "page size for \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' to small"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 169
    .end local v13    # "borderPixels":I
    .end local v17    # "rect":Lcom/badlogic/gdx/math/Rectangle;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 176
    .restart local v13    # "borderPixels":I
    .restart local v17    # "rect":Lcom/badlogic/gdx/math/Rectangle;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->currPage:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->root:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->insert(Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;Lcom/badlogic/gdx/math/Rectangle;)Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    move-result-object v16

    .line 178
    .local v16, "node":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;
    if-nez v16, :cond_5

    .line 179
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->newPage()V

    .line 180
    invoke-virtual/range {p0 .. p2}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pack(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap;)Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v17

    goto/16 :goto_0

    .line 183
    :cond_5
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->leaveName:Ljava/lang/String;

    .line 184
    new-instance v17, Lcom/badlogic/gdx/math/Rectangle;

    .end local v17    # "rect":Lcom/badlogic/gdx/math/Rectangle;
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/math/Rectangle;-><init>(Lcom/badlogic/gdx/math/Rectangle;)V

    .line 185
    .restart local v17    # "rect":Lcom/badlogic/gdx/math/Rectangle;
    move-object/from16 v0, v17

    iget v2, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    int-to-float v3, v13

    sub-float/2addr v2, v3

    move-object/from16 v0, v17

    iput v2, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 186
    move-object/from16 v0, v17

    iget v2, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    int-to-float v3, v13

    sub-float/2addr v2, v3

    move-object/from16 v0, v17

    iput v2, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 187
    shr-int/lit8 v13, v13, 0x1

    .line 188
    move-object/from16 v0, v17

    iget v2, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    int-to-float v3, v13

    add-float/2addr v2, v3

    move-object/from16 v0, v17

    iput v2, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 189
    move-object/from16 v0, v17

    iget v2, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    int-to-float v3, v13

    add-float/2addr v2, v3

    move-object/from16 v0, v17

    iput v2, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->currPage:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->rects:Lcom/badlogic/gdx/utils/OrderedMap;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Lcom/badlogic/gdx/utils/OrderedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-static {}, Lcom/badlogic/gdx/graphics/Pixmap;->getBlending()Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    move-result-object v12

    .line 193
    .local v12, "blending":Lcom/badlogic/gdx/graphics/Pixmap$Blending;
    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->None:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    invoke-static {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V

    .line 194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->currPage:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    move-object/from16 v0, v17

    iget v3, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v3, v3

    move-object/from16 v0, v17

    iget v4, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v4, v4

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v3, v4}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;II)V

    .line 196
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->duplicateBorder:Z

    if-eqz v2, :cond_6

    .line 197
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v15

    .line 198
    .local v15, "imageWidth":I
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v14

    .line 200
    .local v14, "imageHeight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->currPage:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, v17

    iget v3, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v3, v3

    add-int/lit8 v8, v3, -0x1

    move-object/from16 v0, v17

    iget v3, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v3, v3

    add-int/lit8 v9, v3, -0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    .line 201
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->currPage:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    add-int/lit8 v4, v15, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, v17

    iget v3, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v3, v3

    move-object/from16 v0, v17

    iget v8, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    float-to-int v8, v8

    add-int/2addr v8, v3

    move-object/from16 v0, v17

    iget v3, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v3, v3

    add-int/lit8 v9, v3, -0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    .line 202
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->currPage:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    const/4 v4, 0x0

    add-int/lit8 v5, v14, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, v17

    iget v3, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v3, v3

    add-int/lit8 v8, v3, -0x1

    move-object/from16 v0, v17

    iget v3, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v3, v3

    move-object/from16 v0, v17

    iget v9, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    float-to-int v9, v9

    add-int/2addr v9, v3

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    .line 203
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->currPage:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    add-int/lit8 v4, v15, -0x1

    add-int/lit8 v5, v14, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, v17

    iget v3, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v3, v3

    move-object/from16 v0, v17

    iget v8, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    float-to-int v8, v8

    add-int/2addr v8, v3

    move-object/from16 v0, v17

    iget v3, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v3, v3

    move-object/from16 v0, v17

    iget v9, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    float-to-int v9, v9

    add-int/2addr v9, v3

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    .line 206
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->currPage:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, v17

    iget v3, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v8, v3

    move-object/from16 v0, v17

    iget v3, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v3, v3

    add-int/lit8 v9, v3, -0x1

    move-object/from16 v0, v17

    iget v3, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    float-to-int v10, v3

    const/4 v11, 0x1

    move-object/from16 v3, p2

    move v6, v15

    invoke-virtual/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    .line 207
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->currPage:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    const/4 v4, 0x0

    add-int/lit8 v5, v14, -0x1

    const/4 v7, 0x1

    move-object/from16 v0, v17

    iget v3, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v8, v3

    move-object/from16 v0, v17

    iget v3, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v3, v3

    move-object/from16 v0, v17

    iget v6, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    float-to-int v6, v6

    add-int v9, v3, v6

    move-object/from16 v0, v17

    iget v3, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    float-to-int v10, v3

    const/4 v11, 0x1

    move-object/from16 v3, p2

    move v6, v15

    invoke-virtual/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    .line 209
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->currPage:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, v17

    iget v3, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v3, v3

    add-int/lit8 v8, v3, -0x1

    move-object/from16 v0, v17

    iget v3, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v9, v3

    const/4 v10, 0x1

    move-object/from16 v0, v17

    iget v3, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    float-to-int v11, v3

    move-object/from16 v3, p2

    move v7, v14

    invoke-virtual/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    .line 210
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->currPage:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    add-int/lit8 v4, v15, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, v17

    iget v3, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v3, v3

    move-object/from16 v0, v17

    iget v7, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    float-to-int v7, v7

    add-int v8, v3, v7

    move-object/from16 v0, v17

    iget v3, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v9, v3

    const/4 v10, 0x1

    move-object/from16 v0, v17

    iget v3, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    float-to-int v11, v3

    move-object/from16 v3, p2

    move v7, v14

    invoke-virtual/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    .line 214
    .end local v14    # "imageHeight":I
    .end local v15    # "imageWidth":I
    :cond_6
    invoke-static {v12}, Lcom/badlogic/gdx/graphics/Pixmap;->setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V

    .line 216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->currPage:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->addedRects:Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized updateTextureAtlas(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)V
    .locals 12
    .param p1, "atlas"    # Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
    .param p2, "minFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p3, "magFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p4, "useMipMaps"    # Z

    .prologue
    .line 356
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    .line 357
    .local v9, "page":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    iget-object v1, v9, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->texture:Lcom/badlogic/gdx/graphics/Texture;

    if-nez v1, :cond_2

    .line 358
    iget-object v1, v9, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->rects:Lcom/badlogic/gdx/utils/OrderedMap;

    iget v1, v1, Lcom/badlogic/gdx/utils/OrderedMap;->size:I

    if-eqz v1, :cond_0

    iget-object v1, v9, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->addedRects:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v1, :cond_0

    .line 359
    new-instance v11, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$2;

    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    iget-object v1, v9, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    iget-object v2, v9, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    move/from16 v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZZ)V

    invoke-direct {v11, p0, v0}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$2;-><init>(Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;Lcom/badlogic/gdx/graphics/TextureData;)V

    iput-object v11, v9, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 366
    iget-object v1, v9, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1, p2, p3}, Lcom/badlogic/gdx/graphics/Texture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    .line 368
    iget-object v1, v9, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->addedRects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 369
    .local v8, "name":Ljava/lang/String;
    iget-object v1, v9, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->rects:Lcom/badlogic/gdx/utils/OrderedMap;

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/utils/OrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/badlogic/gdx/math/Rectangle;

    .line 370
    .local v10, "rect":Lcom/badlogic/gdx/math/Rectangle;
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v1, v9, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->texture:Lcom/badlogic/gdx/graphics/Texture;

    iget v2, v10, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v2, v2

    iget v3, v10, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v3, v3

    iget v4, v10, Lcom/badlogic/gdx/math/Rectangle;->width:F

    float-to-int v4, v4

    iget v5, v10, Lcom/badlogic/gdx/math/Rectangle;->height:F

    float-to-int v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V

    .line 372
    .local v0, "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    invoke-virtual {p1, v8, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->addRegion(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 356
    .end local v0    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "page":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    .end local v10    # "rect":Lcom/badlogic/gdx/math/Rectangle;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 374
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v9    # "page":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    :cond_1
    :try_start_1
    iget-object v1, v9, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->addedRects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    goto :goto_0

    .line 377
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v1, v9, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->addedRects:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v1, :cond_0

    .line 378
    iget-object v1, v9, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->texture:Lcom/badlogic/gdx/graphics/Texture;

    iget-object v2, v9, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->getTextureData()Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/Texture;->load(Lcom/badlogic/gdx/graphics/TextureData;)V

    .line 379
    iget-object v1, v9, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->addedRects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 380
    .restart local v8    # "name":Ljava/lang/String;
    iget-object v1, v9, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->rects:Lcom/badlogic/gdx/utils/OrderedMap;

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/utils/OrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/badlogic/gdx/math/Rectangle;

    .line 381
    .restart local v10    # "rect":Lcom/badlogic/gdx/math/Rectangle;
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v1, v9, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->texture:Lcom/badlogic/gdx/graphics/Texture;

    iget v2, v10, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v2, v2

    iget v3, v10, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v3, v3

    iget v4, v10, Lcom/badlogic/gdx/math/Rectangle;->width:F

    float-to-int v4, v4

    iget v5, v10, Lcom/badlogic/gdx/math/Rectangle;->height:F

    float-to-int v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V

    .line 383
    .restart local v0    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    invoke-virtual {p1, v8, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->addRegion(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    goto :goto_2

    .line 385
    .end local v0    # "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .end local v8    # "name":Ljava/lang/String;
    .end local v10    # "rect":Lcom/badlogic/gdx/math/Rectangle;
    :cond_3
    iget-object v1, v9, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->addedRects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 389
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "page":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    :cond_4
    monitor-exit p0

    return-void
.end method
