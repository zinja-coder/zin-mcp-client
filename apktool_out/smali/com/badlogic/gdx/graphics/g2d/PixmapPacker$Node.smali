.class final Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;
.super Ljava/lang/Object;
.source "PixmapPacker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Node"
.end annotation


# instance fields
.field public leaveName:Ljava/lang/String;

.field public leftChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

.field public rect:Lcom/badlogic/gdx/math/Rectangle;

.field public rightChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    .line 110
    return-void
.end method

.method public constructor <init>(IIIILcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;Ljava/lang/String;)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "leftChild"    # Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;
    .param p6, "rightChild"    # Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;
    .param p7, "leaveName"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    .line 103
    iput-object p5, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->leftChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    .line 104
    iput-object p6, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->rightChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;

    .line 105
    iput-object p7, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Node;->leaveName:Ljava/lang/String;

    .line 106
    return-void
.end method
