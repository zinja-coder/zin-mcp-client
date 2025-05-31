.class public Lcom/badlogic/gdx/math/GridPoint2;
.super Ljava/lang/Object;
.source "GridPoint2.java"


# instance fields
.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/badlogic/gdx/math/GridPoint2;->x:I

    .line 38
    iput p2, p0, Lcom/badlogic/gdx/math/GridPoint2;->y:I

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/GridPoint2;)V
    .locals 1
    .param p1, "point"    # Lcom/badlogic/gdx/math/GridPoint2;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iget v0, p1, Lcom/badlogic/gdx/math/GridPoint2;->x:I

    iput v0, p0, Lcom/badlogic/gdx/math/GridPoint2;->x:I

    .line 46
    iget v0, p1, Lcom/badlogic/gdx/math/GridPoint2;->y:I

    iput v0, p0, Lcom/badlogic/gdx/math/GridPoint2;->y:I

    .line 47
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 74
    if-ne p0, p1, :cond_1

    .line 77
    :cond_0
    :goto_0
    return v1

    .line 75
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 76
    check-cast v0, Lcom/badlogic/gdx/math/GridPoint2;

    .line 77
    .local v0, "g":Lcom/badlogic/gdx/math/GridPoint2;
    iget v3, p0, Lcom/badlogic/gdx/math/GridPoint2;->x:I

    iget v4, v0, Lcom/badlogic/gdx/math/GridPoint2;->x:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lcom/badlogic/gdx/math/GridPoint2;->y:I

    iget v4, v0, Lcom/badlogic/gdx/math/GridPoint2;->y:I

    if-eq v3, v4, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 82
    const/16 v0, 0x35

    .line 83
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 84
    .local v1, "result":I
    iget v2, p0, Lcom/badlogic/gdx/math/GridPoint2;->x:I

    add-int/lit8 v1, v2, 0x35

    .line 85
    mul-int/lit8 v2, v1, 0x35

    iget v3, p0, Lcom/badlogic/gdx/math/GridPoint2;->y:I

    add-int v1, v2, v3

    .line 86
    return v1
.end method

.method public set(II)Lcom/badlogic/gdx/math/GridPoint2;
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/badlogic/gdx/math/GridPoint2;->x:I

    .line 68
    iput p2, p0, Lcom/badlogic/gdx/math/GridPoint2;->y:I

    .line 69
    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/math/GridPoint2;)Lcom/badlogic/gdx/math/GridPoint2;
    .locals 1
    .param p1, "point"    # Lcom/badlogic/gdx/math/GridPoint2;

    .prologue
    .line 55
    iget v0, p1, Lcom/badlogic/gdx/math/GridPoint2;->x:I

    iput v0, p0, Lcom/badlogic/gdx/math/GridPoint2;->x:I

    .line 56
    iget v0, p1, Lcom/badlogic/gdx/math/GridPoint2;->y:I

    iput v0, p0, Lcom/badlogic/gdx/math/GridPoint2;->y:I

    .line 57
    return-object p0
.end method
