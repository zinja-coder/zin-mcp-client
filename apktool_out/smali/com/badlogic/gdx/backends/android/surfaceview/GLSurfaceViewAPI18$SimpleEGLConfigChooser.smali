.class Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$SimpleEGLConfigChooser;
.super Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$ComponentSizeChooser;
.source "GLSurfaceViewAPI18.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleEGLConfigChooser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;Z)V
    .locals 8
    .param p2, "withDepthBuffer"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v5, 0x0

    .line 989
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$SimpleEGLConfigChooser;->this$0:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;

    .line 990
    if-eqz p2, :cond_0

    const/16 v6, 0x10

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$ComponentSizeChooser;-><init>(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;IIIIII)V

    .line 991
    return-void

    :cond_0
    move v6, v5

    .line 990
    goto :goto_0
.end method
