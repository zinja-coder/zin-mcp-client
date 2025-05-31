.class public Lcom/badlogic/gdx/maps/objects/CircleMapObject;
.super Lcom/badlogic/gdx/maps/MapObject;
.source "CircleMapObject.java"


# instance fields
.field private circle:Lcom/badlogic/gdx/math/Circle;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, v1, v0}, Lcom/badlogic/gdx/maps/objects/CircleMapObject;-><init>(FFF)V

    .line 35
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "radius"    # F

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/badlogic/gdx/maps/MapObject;-><init>()V

    .line 44
    new-instance v0, Lcom/badlogic/gdx/math/Circle;

    invoke-direct {v0, p1, p2, p3}, Lcom/badlogic/gdx/math/Circle;-><init>(FFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/objects/CircleMapObject;->circle:Lcom/badlogic/gdx/math/Circle;

    .line 45
    return-void
.end method


# virtual methods
.method public getCircle()Lcom/badlogic/gdx/math/Circle;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/badlogic/gdx/maps/objects/CircleMapObject;->circle:Lcom/badlogic/gdx/math/Circle;

    return-object v0
.end method
