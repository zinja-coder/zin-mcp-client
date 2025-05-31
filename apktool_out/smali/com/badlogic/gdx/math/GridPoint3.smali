.class public Lcom/badlogic/gdx/math/GridPoint3;
.super Ljava/lang/Object;
.source "GridPoint3.java"


# instance fields
.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/badlogic/gdx/math/GridPoint3;->x:I

    .line 40
    iput p2, p0, Lcom/badlogic/gdx/math/GridPoint3;->y:I

    .line 41
    iput p3, p0, Lcom/badlogic/gdx/math/GridPoint3;->z:I

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/GridPoint3;)V
    .locals 1
    .param p1, "point"    # Lcom/badlogic/gdx/math/GridPoint3;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iget v0, p1, Lcom/badlogic/gdx/math/GridPoint3;->x:I

    iput v0, p0, Lcom/badlogic/gdx/math/GridPoint3;->x:I

    .line 49
    iget v0, p1, Lcom/badlogic/gdx/math/GridPoint3;->y:I

    iput v0, p0, Lcom/badlogic/gdx/math/GridPoint3;->y:I

    .line 50
    iget v0, p1, Lcom/badlogic/gdx/math/GridPoint3;->z:I

    iput v0, p0, Lcom/badlogic/gdx/math/GridPoint3;->z:I

    .line 51
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 81
    if-ne p0, p1, :cond_1

    .line 84
    :cond_0
    :goto_0
    return v1

    .line 82
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

    .line 83
    check-cast v0, Lcom/badlogic/gdx/math/GridPoint3;

    .line 84
    .local v0, "g":Lcom/badlogic/gdx/math/GridPoint3;
    iget v3, p0, Lcom/badlogic/gdx/math/GridPoint3;->x:I

    iget v4, v0, Lcom/badlogic/gdx/math/GridPoint3;->x:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lcom/badlogic/gdx/math/GridPoint3;->y:I

    iget v4, v0, Lcom/badlogic/gdx/math/GridPoint3;->y:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lcom/badlogic/gdx/math/GridPoint3;->z:I

    iget v4, v0, Lcom/badlogic/gdx/math/GridPoint3;->z:I

    if-eq v3, v4, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 89
    const/16 v0, 0x11

    .line 90
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 91
    .local v1, "result":I
    iget v2, p0, Lcom/badlogic/gdx/math/GridPoint3;->x:I

    add-int/lit8 v1, v2, 0x11

    .line 92
    mul-int/lit8 v2, v1, 0x11

    iget v3, p0, Lcom/badlogic/gdx/math/GridPoint3;->y:I

    add-int v1, v2, v3

    .line 93
    mul-int/lit8 v2, v1, 0x11

    iget v3, p0, Lcom/badlogic/gdx/math/GridPoint3;->z:I

    add-int v1, v2, v3

    .line 94
    return v1
.end method

.method public set(III)Lcom/badlogic/gdx/math/GridPoint3;
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/badlogic/gdx/math/GridPoint3;->x:I

    .line 74
    iput p2, p0, Lcom/badlogic/gdx/math/GridPoint3;->y:I

    .line 75
    iput p3, p0, Lcom/badlogic/gdx/math/GridPoint3;->z:I

    .line 76
    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/math/GridPoint3;)Lcom/badlogic/gdx/math/GridPoint3;
    .locals 1
    .param p1, "point"    # Lcom/badlogic/gdx/math/GridPoint3;

    .prologue
    .line 59
    iget v0, p1, Lcom/badlogic/gdx/math/GridPoint3;->x:I

    iput v0, p0, Lcom/badlogic/gdx/math/GridPoint3;->x:I

    .line 60
    iget v0, p1, Lcom/badlogic/gdx/math/GridPoint3;->y:I

    iput v0, p0, Lcom/badlogic/gdx/math/GridPoint3;->y:I

    .line 61
    iget v0, p1, Lcom/badlogic/gdx/math/GridPoint3;->z:I

    iput v0, p0, Lcom/badlogic/gdx/math/GridPoint3;->z:I

    .line 62
    return-object p0
.end method
