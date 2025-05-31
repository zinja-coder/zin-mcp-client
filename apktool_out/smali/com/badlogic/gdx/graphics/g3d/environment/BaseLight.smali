.class public abstract Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;
.super Ljava/lang/Object;
.source "BaseLight.java"


# instance fields
.field public final color:Lcom/badlogic/gdx/graphics/Color;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/BaseLight;->color:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method
