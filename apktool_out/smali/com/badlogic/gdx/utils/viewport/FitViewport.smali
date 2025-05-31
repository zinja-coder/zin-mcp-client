.class public Lcom/badlogic/gdx/utils/viewport/FitViewport;
.super Lcom/badlogic/gdx/utils/viewport/ScalingViewport;
.source "FitViewport.java"


# direct methods
.method public constructor <init>(FF)V
    .locals 1
    .param p1, "worldWidth"    # F
    .param p2, "worldHeight"    # F

    .prologue
    .line 15
    sget-object v0, Lcom/badlogic/gdx/utils/Scaling;->fit:Lcom/badlogic/gdx/utils/Scaling;

    invoke-direct {p0, v0, p1, p2}, Lcom/badlogic/gdx/utils/viewport/ScalingViewport;-><init>(Lcom/badlogic/gdx/utils/Scaling;FF)V

    .line 16
    return-void
.end method

.method public constructor <init>(FFLcom/badlogic/gdx/graphics/Camera;)V
    .locals 1
    .param p1, "worldWidth"    # F
    .param p2, "worldHeight"    # F
    .param p3, "camera"    # Lcom/badlogic/gdx/graphics/Camera;

    .prologue
    .line 19
    sget-object v0, Lcom/badlogic/gdx/utils/Scaling;->fit:Lcom/badlogic/gdx/utils/Scaling;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/badlogic/gdx/utils/viewport/ScalingViewport;-><init>(Lcom/badlogic/gdx/utils/Scaling;FFLcom/badlogic/gdx/graphics/Camera;)V

    .line 20
    return-void
.end method
