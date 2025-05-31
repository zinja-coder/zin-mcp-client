.class public Lcom/badlogic/gdx/maps/MapObject;
.super Ljava/lang/Object;
.source "MapObject.java"


# instance fields
.field private color:Lcom/badlogic/gdx/graphics/Color;

.field private name:Ljava/lang/String;

.field private opacity:F

.field private properties:Lcom/badlogic/gdx/maps/MapProperties;

.field private visible:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/badlogic/gdx/maps/MapObject;->name:Ljava/lang/String;

    .line 24
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/maps/MapObject;->opacity:F

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/maps/MapObject;->visible:Z

    .line 26
    new-instance v0, Lcom/badlogic/gdx/maps/MapProperties;

    invoke-direct {v0}, Lcom/badlogic/gdx/maps/MapProperties;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/MapObject;->properties:Lcom/badlogic/gdx/maps/MapProperties;

    .line 27
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/maps/MapObject;->color:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method


# virtual methods
.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/badlogic/gdx/maps/MapObject;->color:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/badlogic/gdx/maps/MapObject;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOpacity()F
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/badlogic/gdx/maps/MapObject;->opacity:F

    return v0
.end method

.method public getProperties()Lcom/badlogic/gdx/maps/MapProperties;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/badlogic/gdx/maps/MapObject;->properties:Lcom/badlogic/gdx/maps/MapProperties;

    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/badlogic/gdx/maps/MapObject;->visible:Z

    return v0
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 0
    .param p1, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/badlogic/gdx/maps/MapObject;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 47
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/badlogic/gdx/maps/MapObject;->name:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setOpacity(F)V
    .locals 0
    .param p1, "opacity"    # F

    .prologue
    .line 56
    iput p1, p0, Lcom/badlogic/gdx/maps/MapObject;->opacity:F

    .line 57
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/badlogic/gdx/maps/MapObject;->visible:Z

    .line 67
    return-void
.end method
