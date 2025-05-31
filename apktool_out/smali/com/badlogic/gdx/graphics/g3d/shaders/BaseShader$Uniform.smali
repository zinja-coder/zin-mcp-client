.class public Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;
.super Ljava/lang/Object;
.source "BaseShader.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Validator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Uniform"
.end annotation


# instance fields
.field public final alias:Ljava/lang/String;

.field public final environmentMask:J

.field public final materialMask:J

.field public final overallMask:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    .line 91
    move-object v0, p0

    move-object v1, p1

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;JJ)V

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 8
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "overallMask"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 87
    move-object v0, p0

    move-object v1, p1

    move-wide v4, v2

    move-wide v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;JJJ)V

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 8
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "materialMask"    # J
    .param p4, "environmentMask"    # J

    .prologue
    .line 83
    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;-><init>(Ljava/lang/String;JJJ)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJJ)V
    .locals 0
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "materialMask"    # J
    .param p4, "environmentMask"    # J
    .param p6, "overallMask"    # J

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;->alias:Ljava/lang/String;

    .line 77
    iput-wide p2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;->materialMask:J

    .line 78
    iput-wide p4, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;->environmentMask:J

    .line 79
    iput-wide p6, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;->overallMask:J

    .line 80
    return-void
.end method


# virtual methods
.method public validate(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;ILcom/badlogic/gdx/graphics/g3d/Renderable;)Z
    .locals 8
    .param p1, "shader"    # Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;
    .param p2, "inputID"    # I
    .param p3, "renderable"    # Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .prologue
    const-wide/16 v0, 0x0

    .line 95
    if-eqz p3, :cond_1

    iget-object v4, p3, Lcom/badlogic/gdx/graphics/g3d/Renderable;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    if-eqz v4, :cond_1

    iget-object v4, p3, Lcom/badlogic/gdx/graphics/g3d/Renderable;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g3d/Material;->getMask()J

    move-result-wide v2

    .line 96
    .local v2, "matFlags":J
    :goto_0
    if-eqz p3, :cond_0

    iget-object v4, p3, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    if-eqz v4, :cond_0

    iget-object v4, p3, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g3d/Environment;->getMask()J

    move-result-wide v0

    .line 97
    .local v0, "envFlags":J
    :cond_0
    iget-wide v4, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;->materialMask:J

    and-long/2addr v4, v2

    iget-wide v6, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;->materialMask:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    iget-wide v4, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;->environmentMask:J

    and-long/2addr v4, v0

    iget-wide v6, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;->environmentMask:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    or-long v4, v2, v0

    iget-wide v6, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;->overallMask:J

    and-long/2addr v4, v6

    iget-wide v6, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$Uniform;->overallMask:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    const/4 v4, 0x1

    :goto_1
    return v4

    .end local v0    # "envFlags":J
    .end local v2    # "matFlags":J
    :cond_1
    move-wide v2, v0

    .line 95
    goto :goto_0

    .line 97
    .restart local v0    # "envFlags":J
    .restart local v2    # "matFlags":J
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method
