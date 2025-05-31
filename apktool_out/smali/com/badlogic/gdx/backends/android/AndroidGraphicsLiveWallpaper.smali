.class public final Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;
.super Lcom/badlogic/gdx/backends/android/AndroidGraphics;
.source "AndroidGraphicsLiveWallpaper.java"


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;)V
    .locals 1
    .param p1, "lwp"    # Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;
    .param p2, "config"    # Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;
    .param p3, "resolutionStrategy"    # Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;-><init>(Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;Z)V

    .line 43
    return-void
.end method


# virtual methods
.method protected createGLSurfaceView(Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;)Landroid/view/View;
    .locals 9
    .param p1, "application"    # Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;
    .param p2, "resolutionStrategy"    # Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->checkGL20()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Libgdx requires OpenGL ES 2.0"

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->getEglConfigChooser()Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    move-result-object v7

    .line 66
    .local v7, "configChooser":Landroid/opengl/GLSurfaceView$EGLConfigChooser;
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 67
    .local v8, "sdkVersion":I
    const/16 v1, 0xa

    if-gt v8, v1, :cond_2

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget-boolean v1, v1, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useGLSurfaceView20API18:Z

    if-eqz v1, :cond_2

    .line 68
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper$1;

    invoke-interface {p1}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper$1;-><init>(Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;Landroid/content/Context;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;)V

    .line 79
    .local v0, "view":Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20API18;
    if-eqz v7, :cond_1

    .line 80
    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20API18;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 83
    :goto_0
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20API18;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 104
    .end local v0    # "view":Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20API18;
    :goto_1
    return-object v0

    .line 82
    .restart local v0    # "view":Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20API18;
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v1, v1, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->r:I

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v2, v2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->g:I

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v3, v3, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->b:I

    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v4, v4, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->a:I

    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v5, v5, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->depth:I

    iget-object v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v6, v6, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->stencil:I

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20API18;->setEGLConfigChooser(IIIIII)V

    goto :goto_0

    .line 87
    .end local v0    # "view":Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20API18;
    :cond_2
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper$2;

    invoke-interface {p1}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper$2;-><init>(Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;Landroid/content/Context;Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;)V

    .line 99
    .local v0, "view":Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;
    if-eqz v7, :cond_3

    .line 100
    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 103
    :goto_2
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    goto :goto_1

    .line 102
    :cond_3
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v1, v1, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->r:I

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v2, v2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->g:I

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v3, v3, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->b:I

    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v4, v4, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->a:I

    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v5, v5, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->depth:I

    iget-object v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget v6, v6, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->stencil:I

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;->setEGLConfigChooser(IIIIII)V

    goto :goto_2
.end method

.method getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    check-cast v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->service:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    iget-object v1, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->sync:[I

    monitor-enter v1

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    check-cast v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaper;->service:Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected logManagedCachesStatus()V
    .locals 1

    .prologue
    .line 249
    sget-boolean v0, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 250
    invoke-super {p0}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->logManagedCachesStatus()V

    .line 252
    :cond_0
    return-void
.end method

.method public onDestroyGLSurfaceView()V
    .locals 4

    .prologue
    .line 111
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->view:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 112
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->view:Landroid/view/View;

    instance-of v1, v1, Landroid/opengl/GLSurfaceView;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->view:Landroid/view/View;

    instance-of v1, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;

    if-eqz v1, :cond_1

    .line 115
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->view:Landroid/view/View;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "onDestroy"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->view:Landroid/view/View;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-boolean v1, Lcom/badlogic/gdx/backends/android/AndroidLiveWallpaperService;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 117
    const-string v1, "WallpaperService"

    const-string v2, " > AndroidLiveWallpaper - onDestroy() stopped GLThread managed by GLSurfaceView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_1
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 122
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "WallpaperService"

    const-string v2, "failed to destroy GLSurfaceView\'s thread! GLSurfaceView.onDetachedFromWindow impl changed since API lvl 16!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 13
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v12, 0x0

    .line 149
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 150
    .local v6, "time":J
    iget-wide v8, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->lastFrameTime:J

    sub-long v8, v6, v8

    long-to-float v8, v8

    const v9, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v8, v9

    iput v8, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->deltaTime:F

    .line 151
    iput-wide v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->lastFrameTime:J

    .line 154
    iget-boolean v8, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->resume:Z

    if-nez v8, :cond_4

    .line 155
    iget-object v8, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->mean:Lcom/badlogic/gdx/math/WindowedMean;

    iget v9, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->deltaTime:F

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/math/WindowedMean;->addValue(F)V

    .line 160
    :goto_0
    const/4 v4, 0x0

    .line 161
    .local v4, "lrunning":Z
    const/4 v2, 0x0

    .line 162
    .local v2, "lpause":Z
    const/4 v1, 0x0

    .line 163
    .local v1, "ldestroy":Z
    const/4 v3, 0x0

    .line 165
    .local v3, "lresume":Z
    iget-object v9, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->synch:Ljava/lang/Object;

    monitor-enter v9

    .line 166
    :try_start_0
    iget-boolean v4, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->running:Z

    .line 167
    iget-boolean v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->pause:Z

    .line 168
    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->destroy:Z

    .line 169
    iget-boolean v3, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->resume:Z

    .line 171
    iget-boolean v8, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->resume:Z

    if-eqz v8, :cond_0

    .line 172
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->resume:Z

    .line 174
    iget-object v8, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->synch:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 177
    :cond_0
    iget-boolean v8, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->pause:Z

    if-eqz v8, :cond_1

    .line 178
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->pause:Z

    .line 179
    iget-object v8, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->synch:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 182
    :cond_1
    iget-boolean v8, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->destroy:Z

    if-eqz v8, :cond_2

    .line 183
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->destroy:Z

    .line 184
    iget-object v8, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->synch:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 186
    :cond_2
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    if-eqz v3, :cond_3

    .line 190
    iget-object v8, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v8}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getApplicationListener()Lcom/badlogic/gdx/ApplicationListener;

    move-result-object v8

    invoke-interface {v8}, Lcom/badlogic/gdx/ApplicationListener;->resume()V

    .line 191
    sget-object v8, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v9, "AndroidGraphics"

    const-string v10, "resumed"

    invoke-interface {v8, v9, v10}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_3
    if-eqz v4, :cond_6

    .line 201
    iget-object v8, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v8}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getRunnables()Lcom/badlogic/gdx/utils/Array;

    move-result-object v9

    monitor-enter v9

    .line 202
    :try_start_1
    iget-object v8, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v8}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getExecutedRunnables()Lcom/badlogic/gdx/utils/Array;

    move-result-object v8

    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 203
    iget-object v8, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v8}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getExecutedRunnables()Lcom/badlogic/gdx/utils/Array;

    move-result-object v8

    iget-object v10, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v10}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getRunnables()Lcom/badlogic/gdx/utils/Array;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 204
    iget-object v8, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v8}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getRunnables()Lcom/badlogic/gdx/utils/Array;

    move-result-object v8

    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 206
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v8, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v8}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getExecutedRunnables()Lcom/badlogic/gdx/utils/Array;

    move-result-object v8

    iget v8, v8, Lcom/badlogic/gdx/utils/Array;->size:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ge v0, v8, :cond_5

    .line 208
    :try_start_2
    iget-object v8, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v8}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getExecutedRunnables()Lcom/badlogic/gdx/utils/Array;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Runnable;

    invoke-interface {v8}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 206
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 157
    .end local v0    # "i":I
    .end local v1    # "ldestroy":Z
    .end local v2    # "lpause":Z
    .end local v3    # "lresume":Z
    .end local v4    # "lrunning":Z
    :cond_4
    const/4 v8, 0x0

    iput v8, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->deltaTime:F

    goto/16 :goto_0

    .line 186
    .restart local v1    # "ldestroy":Z
    .restart local v2    # "lpause":Z
    .restart local v3    # "lresume":Z
    .restart local v4    # "lrunning":Z
    :catchall_0
    move-exception v8

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v8

    .line 209
    .restart local v0    # "i":I
    :catch_0
    move-exception v5

    .line 210
    .local v5, "t":Ljava/lang/Throwable;
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 213
    .end local v0    # "i":I
    .end local v5    # "t":Ljava/lang/Throwable;
    :catchall_1
    move-exception v8

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v8

    .restart local v0    # "i":I
    :cond_5
    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 219
    iget-object v8, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v8}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getInput()Lcom/badlogic/gdx/backends/android/AndroidInput;

    move-result-object v8

    invoke-virtual {v8}, Lcom/badlogic/gdx/backends/android/AndroidInput;->processEvents()V

    .line 220
    iget-wide v8, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->frameId:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->frameId:J

    .line 221
    iget-object v8, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v8}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getApplicationListener()Lcom/badlogic/gdx/ApplicationListener;

    move-result-object v8

    invoke-interface {v8}, Lcom/badlogic/gdx/ApplicationListener;->render()V

    .line 225
    .end local v0    # "i":I
    :cond_6
    if-eqz v2, :cond_7

    .line 226
    iget-object v8, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v8}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getApplicationListener()Lcom/badlogic/gdx/ApplicationListener;

    move-result-object v8

    invoke-interface {v8}, Lcom/badlogic/gdx/ApplicationListener;->pause()V

    .line 228
    sget-object v8, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v9, "AndroidGraphics"

    const-string v10, "paused"

    invoke-interface {v8, v9, v10}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_7
    if-eqz v1, :cond_8

    .line 233
    iget-object v8, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->app:Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;

    invoke-interface {v8}, Lcom/badlogic/gdx/backends/android/AndroidApplicationBase;->getApplicationListener()Lcom/badlogic/gdx/ApplicationListener;

    move-result-object v8

    invoke-interface {v8}, Lcom/badlogic/gdx/ApplicationListener;->dispose()V

    .line 235
    sget-object v8, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v9, "AndroidGraphics"

    const-string v10, "destroyed"

    invoke-interface {v8, v9, v10}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_8
    iget-wide v8, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->frameStart:J

    sub-long v8, v6, v8

    const-wide/32 v10, 0x3b9aca00

    cmp-long v8, v8, v10

    if-lez v8, :cond_9

    .line 239
    iget v8, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->frames:I

    iput v8, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->fps:I

    .line 240
    iput v12, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->frames:I

    .line 241
    iput-wide v6, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->frameStart:J

    .line 243
    :cond_9
    iget v8, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->frames:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->frames:I

    .line 244
    return-void
.end method

.method resume()V
    .locals 5

    .prologue
    .line 132
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->synch:Ljava/lang/Object;

    monitor-enter v2

    .line 133
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->running:Z

    .line 134
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->resume:Z

    .line 137
    :goto_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->resume:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 139
    :try_start_1
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGraphicsLiveWallpaper;->synch:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "ignored":Ljava/lang/InterruptedException;
    :try_start_2
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v3, "AndroidGraphics"

    const-string v4, "waiting for resume synchronization failed!"

    invoke-interface {v1, v3, v4}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 144
    .end local v0    # "ignored":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 145
    return-void
.end method
